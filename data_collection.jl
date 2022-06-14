# Data collection algorithm



using PowerModels
using JuMP
using Ipopt

# %% Power Flow Exploration
N     = 300   # number of power flow solutions maximizing the distance between solutions
PowerModels.silence() #reduces the number of text yielded in the script

# Define the case
case_name = "pglib_opf_case30_ieee"
case_file = case_name*".m"
test_system_final = "./pglib_opf/"*case_file
case = PowerModels.parse_file(test_system_final)


for i in collect(keys(case["gen"]))
   case["gen"][i]["cost"]=[0,0]     #Assign a 0 to all the terms cost to make the objective function 0. If the system had HVDC lines they would need to be changed to 0 too.
end


# Solving the optimal power flow using the standard function of Power Models
OPF_soln=PowerModels.solve_opf(case, ACPPowerModel, Ipopt.Optimizer)


firststatus = println(OPF_soln["termination_status"]) #answers the solution of the model
solvestatus=[]
solvestatusind=string(OPF_soln["termination_status"])
append!(solvestatus, solvestatusind)



llista_gen=[]
llista_bus=[]

for i in collect(keys(case["bus"]))
   append!(llista_bus, convert(AbstractFloat,case["bus"][i]["bus_i"]))
end

for i in collect(keys(case["gen"]))
   if case["gen"][i]["gen_status"]==1  
      append!(llista_gen, convert(AbstractFloat,case["gen"][i]["gen_bus"]))
   end
   if case["gen"][i]["gen_status"]!=1   # The code is not adapted for unit commitment problems. This is a reminder that the mat file has generators not on.
      throw(DomainError("case data error","There are generators with a state variable different than 0"))
   end
end

Pginicial =[]
for ii in collect(keys(case["gen"]))
   if case["gen"][ii]["gen_status"]==1
      append!(Pginicial, convert(AbstractFloat,OPF_soln["solution"]["gen"][ii]["pg"]))
   end
end

Qginicial =[]
for ii in collect(keys(case["gen"]))
   if case["gen"][ii]["gen_status"]==1
      append!(Qginicial, convert(AbstractFloat,OPF_soln["solution"]["gen"][ii]["qg"]))
   end
end

Vminicial =[]
for ii in collect(keys(case["bus"]))
   append!(Vminicial, convert(AbstractFloat,OPF_soln["solution"]["bus"][ii]["vm"]))
end

Vainicial =[]
for ii in collect(keys(case["bus"]))
   append!(Vainicial, convert(AbstractFloat,OPF_soln["solution"]["bus"][ii]["va"]))
end




Vminter1=hcat(Vminicial,llista_bus)
Vminter2=Vminter1[sortperm(Vminter1[:, 2]), :]
Vm=Vminter2[:,1]

Vainter1=hcat(Vainicial,llista_bus)
Vainter2=Vainter1[sortperm(Vainter1[:, 2]), :]
Va=Vainter2[:,1]

Pginter1=hcat(Pginicial,llista_gen)
Pginter2=Pginter1[sortperm(Pginter1[:, 2]), :]
P_gen_def=Pginter2[:,1]

Qginter1=hcat(Qginicial,llista_gen)
Qginter2=Qginter1[sortperm(Qginter1[:, 2]), :]
Q_gen_def=Qginter2[:,1]



include("build_opf_DTU.jl") 



function update_result(Pgen_final,Qgen_final,Voltage_mag_final,Voltage_ang_final,N)
    for i=1:N
        model = Model(Ipopt.Optimizer)
        model = build_custom_opf_DTU(case,Pgen_final[:,:],Qgen_final[:,:],model)

        gen_index=model[2]
        bus_index=model[3]



        result = optimize!(model[1])

        if string(termination_status(model[1])) != "LOCALLY_SOLVED"  && string(termination_status(model[1])) != "ALMOST_LOCALLY_SOLVED"
        #if string(termination_status(model[1])) != "LOCALLY_SOLVED"
            print(termination_status(model[1]), "******************", "\n")
            break   # stop the process as soon as the first not optimal solution is found
        end

        Objective_value = objective_value(model[1])

        Pgen=value.(model[1][:pg])
        Pgen_final_before_sortt=Pgen.data
        C=hcat(Pgen_final_before_sortt,gen_index)
        D=C[sortperm(C[:, 2]), :]
        Pgenn=D[:,1]
    
        Qgen=value.(model[1][:qg])
        Qgen_final_before_sortt=Qgen.data
        C1=hcat(Qgen_final_before_sortt,gen_index)
        D1=C1[sortperm(C1[:, 2]), :]
        Qgenn=D1[:,1]
    
        Pgen_final=hcat(Pgen_final,Pgenn)
        Qgen_final=hcat(Qgen_final,Qgenn)
    
    
        Voltage_mag_before_sort=value.(model[1][:vm])
        E=hcat(Voltage_mag_before_sort,bus_index)
        F=E[sortperm(E[:, 2]), :]
        Voltage_mag=F[:,1]
    
        Voltage_ang_before_sort=value.(model[1][:va])
        E1=hcat(Voltage_ang_before_sort,bus_index)
        F1=E1[sortperm(E1[:, 2]), :]
        Voltage_ang=F1[:,1]
    
        Voltage_mag_final=hcat(Voltage_mag_final,Voltage_mag)
        Voltage_ang_final=hcat(Voltage_ang_final,Voltage_ang)
    
        println("Iteration=$i")
        println(Objective_value)
        # Check that the solver terminated without an error
        println("The solver termination status is $(termination_status(model[1]))")
        append!(solvestatus, string(termination_status(model[1])))
        

        Pgen_final = Matrix{Float64}(Pgen_final)
        Qgen_final = Matrix{Float64}(Qgen_final)
        Voltage_mag_final = Matrix{Float64}(Voltage_mag_final)
        Voltage_ang_final = Matrix{Float64}(Voltage_ang_final)
    end
    return Pgen_final,Qgen_final,Voltage_mag_final,Voltage_ang_final
end
  

# %% Call Data Collection function!
P_gen_def,Q_gen_def,Vm,Va=update_result(P_gen_def,Q_gen_def,Vm,Va,N)

print(length(Vm[1,:]))
 
using Plots
plot(Vm)
