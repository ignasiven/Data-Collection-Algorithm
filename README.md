# Data-Collection-Algorithm
Optimization-Based Exploration of the Feasible Power Flow Space for OPF Data Collection

$$
\begin{align*}f_{1}= & \sum_{j\in\Gamma}\Bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}+\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\Bigg)\\
f_{2}= & \sum_{j\in\Gamma}\Bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{3}+\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{3}\Bigg)\\
f_{3}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}\bigg)+\log\bigg(\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\bigg)\Bigg)\\
f_{4}= & \sum_{j\in\Gamma}\Bigg(\log_{10}\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}\bigg)+\log_{10}\bigg(\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\bigg)\Bigg)\\
f_{5}= & \sum_{j\in\Gamma}\Bigg(\log_{2}\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}\bigg)+\log_{2}\bigg(\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\bigg)\Bigg)\\
f_{6}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}\bigg)+\exp\bigg(\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\bigg)\Bigg)\\
f_{7}= & \sum_{j\in\Gamma}\Bigg(\exp_{10}\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}\bigg)+\exp_{10}\bigg(\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}\bigg)\Bigg)\\
f_{8}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sum_{i\in{\mathcal G}}\left|p_{i}-P_{i,j}\right|\bigg)+\log\bigg(\sum_{i\in{\mathcal G}}\left|q_{i}-Q_{i,j}\right|\bigg)\Bigg)\\
f_{9}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sum_{i\in{\mathcal G}}\left|p_{i}-P_{i,j}\right|\bigg)+\exp\bigg(\sum_{i\in{\mathcal G}}\left|q_{i}-Q_{i,j}\right|\bigg)\Bigg)\\
f_{10}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{3}\bigg)+\exp\bigg(\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{3}\bigg)\Bigg)\\
f_{11}= & \sum_{j\in\Gamma}\Bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|p_{i}^{2}-P_{i,j}^{2}\right|}+\sqrt{\sum_{i\in{\mathcal G}}\left|q_{i}^{2}-Q_{i,j}^{2}\right|}\Bigg)\\
f_{12}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|p_{i}^{2}-P_{i,j}^{2}\right|}\bigg)+\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|q_{i}^{2}-Q_{i,j}^{2}\right|}\bigg)\Bigg)\\
f_{13}= & \sum_{j\in\Gamma}\Bigg(\log_{10}\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|p_{i}^{2}-P_{i,j}^{2}\right|}\bigg)+\log_{10}\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|q_{i}^{2}-Q_{i,j}^{2}\right|}\bigg)\Bigg)\\
f_{14}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|p_{i}^{2}-P_{i,j}^{2}\right|}\bigg)+\exp\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|q_{i}^{2}-Q_{i,j}^{2}\right|}\bigg)\Bigg)\\
f_{15}= & \sum_{j\in\Gamma}\Bigg(\exp_{10}\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|p_{i}^{2}-P_{i,j}^{2}\right|}\bigg)+\exp_{10}\bigg(\sqrt{\sum_{i\in{\mathcal G}}\left|q_{i}^{2}-Q_{i,j}^{2}\right|}\bigg)\Bigg)\\
f_{16}= & \sum_{j\in\Gamma}\Bigg(\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{17}= & \sum_{j\in\Gamma}\Bigg(\log\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\log\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{18}= & \sum_{j\in\Gamma}\Bigg(\log_{10}\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\log_{10}\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{19}= & \sum_{j\in\Gamma}\Bigg(\log_{2}\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\log_{2}\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{20}= & \sum_{j\in\Gamma}\Bigg(\exp\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\exp\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{21}= & \sum_{j\in\Gamma}\Bigg(\exp_{10}\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\exp_{10}\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{22}= & \sum_{j\in\Gamma}\Bigg(\exp_{2}\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}+\exp_{2}\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\Bigg)\\
f_{23}= & \sum_{j\in \Gamma}\left(\Bigg(1-\frac{\sum p_{i}P_{i,j}}{\sqrt{\sum p_{i}^{2}}\sqrt{\sum P_{i,j}^{2}}}\Bigg)+\Bigg(1-\frac{\sum q_{i}Q_{i,j}}{\sqrt{\sum q_{i}^{2}}\sqrt{\sum Q_{i,j}^{2}}}\Bigg)\right)\\
f_{24}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\max_{i\in{\mathcal G}}(p_{i}-P_{i,j})\bigg)+\log\bigg(\max_{i\in{\mathcal G}}(q_{i}-Q_{i,j})\bigg)\Bigg)\\
f_{25}= & \sum_{j\in\Gamma}\Bigg(\sqrt{\sum_{k\in{\mathcal N}}\big(v_{k}-V_{k,j}\Big)^{2}}\Bigg)\\
f_{26}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\big(v_{k}-V_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{27}= & \sum_{j\in\Gamma}\Bigg(\log_{10}\bigg(\sqrt{\sum_{k\in{\mathcal N}}\big(v_{k}-V_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{28}= & \sum_{j\in\Gamma}\Bigg(\log_{2}\bigg(\sqrt{\sum_{k\in{\mathcal N}}\big(v_{k}-V_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{29}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sqrt{\sum_{k\in{\mathcal N}}\big(v_{k}-V_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{30}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sum_{k\in{\mathcal N}}\left|v_{k}-V_{k,j}\right|\bigg)\Bigg)\\
f_{31}= & \sum_{j\in\Gamma}\Bigg(\log_{10}\bigg(\sum_{k\in{\mathcal N}}\left|v_{k}-V_{k,j}\right|\bigg)\Bigg)\\
f_{32}= & \sum_{j\in\Gamma}\Bigg(\log_{2}\bigg(\sum_{k\in{\mathcal N}}\left|v_{k}-V_{k,j}\right|\bigg)\Bigg)\\
f_{33}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(v_{k}-V_{k,j}\Big)^{2}}\bigg)+\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(\theta_{k}-\Theta_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{34}= & \sum_{j\in\Gamma}\Bigg(\log_{2}\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(v_{k}-V_{k,j}\Big)^{2}}\bigg)+\log_{2}\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(\theta_{k}-\Theta_{k,j}\Big)^{2}}\bigg)\Bigg)\\
f_{35}= & \sum_{j\in\Gamma}\Bigg(\exp\bigg(\sum_{k\in{\mathcal N}}\Big(v_{k}-V_{k,j}\Big)^{2}\bigg)\Bigg)^2+\sum_{j\in\Gamma}\Bigg(\exp\bigg(\sum_{k\in{\mathcal N}}\Big(\theta_{k}-\Theta_{k,j}\Big)^{2}\bigg)\Bigg)^2\\
f_{36}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(v_{k}-V_{k,j}\Big)^{2}}\bigg)+\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(\theta_{k}-\Theta_{k,j}\Big)^{2}}\bigg)\Bigg)+\sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}\bigg)+\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\bigg)\Bigg)\\
f_{37}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{k\in{\mathcal N}}\Big(v_{k}-V_{k,j}\Big)^{2}}\bigg)\Bigg)+\sum_{j\in\Gamma}\Bigg(\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\Big(p_{i}-P_{i,j}\Big)^{2}}\bigg)+\log\bigg(\sqrt{\sum_{i\in{\mathcal G}}\Big(q_{i}-Q_{i,j}\Big)^{2}}\bigg)\Bigg)\\
f_{38}= & \sum_{j\in\Gamma}\Bigg(\log\bigg(\sum_{i\in{\mathcal G}}\left|p_{i}-P_{i,j}\right|\bigg)+\log\bigg(\sum_{i\in{\mathcal G}}\left|q_{i}-Q_{i,j}\right|\bigg)+\sum_{j\in\Gamma}\Bigg(\log\bigg(\sum_{k\in{\mathcal N}}\left|v_{k}-V_{k,j}\right|\bigg)\Bigg)\\
f_{39}= & \sum_{j\in\Gamma}\Bigg(\sum_{i\in{\mathcal G}}\log\left(\Big(p_{i}-P_{i,j}\Big)^{2}\right)+\sum_{i\in{\mathcal G}}\log\left(\Big(q_{i}-Q_{i,j}\Big)^{2}\right)\Bigg)\\
f_{40}= & \sum_{j\in\Gamma}\Bigg(\sum_{i\in{\mathcal G}}\log\left(|p_{i}-P_{i,j}|\right)+\sum_{i\in{\mathcal G}}\log\left(|q_{i}-Q_{i,j}|\right)\Bigg).
\end{align*}
$$

\begin{table}[h!]
\centering
\begin{tabular}{l|lllll}
F     & IEEE3    & IEEE5     & IEEE14   & IEEE30   & IEEE57   \\
\hline
1     & 0,450036 & 2,825208 & 0,390939 & 0,131712 & 4,413723 \\
2     & DNF      & DNF       & DNF      & DNF      & DNF      \\
3     & 0,238171 & 2,242697 & DNF      & 0,089379 & 1,470119 \\
4     & 0,267379 & 1,573723 & 0,138653 & 0,098549 & 1,582602 \\
5     & 0,223993 & 1,674841 & DNF      & 0,093355 & DNF      \\
6     & 0,505872 & DNF       & 0,172858 & 0,131712 & DNF      \\
7     & 0,505872 & DNF       & 0,333461 & 0,182413 & DNF      \\
8     & 0,862205 & 1,056312 & 0,188589 & 0,10423  & DNF      \\
9     & 0,450036 & 3,980856 & 0,387271 & 0,135768 & 3,472789 \\
10    & 0,933686 & DNF       & 0,391108 & 0,183072 & DNF      \\
11    & 0,230415 & 1,881679 & 0,174417 & DNF      & DNF      \\
12    & 0,267379 & 0,984608  & DNF      & 0,119454 & 1,075534 \\
13    & 0,3285   & 1,066166 & DNF      & 0,115684 & 0,903991 \\
14    & DNF      & DNF       & DNF      & DNF      & DNF      \\
15    & DNF      & DNF       & DNF      & 0,143334 & DNF      \\
16    & DNF      & DNF       & DNF      & DNF      & DNF      \\
17    & 0,248731 & 1,73463   & 0,17264  & 0,095667 & 1,49698  \\
18    & 0,261035 & 1,504097 & 0,155999 & 0,097071 & 1,493332 \\
19    & 0,248731 & 1,511583 & 0,164225 & 0,095299 & DNF      \\
20    & DNF      & DNF       & DNF      & DNF      & 4,413723 \\
21    & DNF      & DNF       & DNF      & 0,131712 & 4,413723 \\
22    & 0,505872 & DNF       & 0,380753 & 0,131712 & DNF      \\
23    & DNF      & DNF       & 0,407348 & 0,179383 & DNF      \\
24-25 & DNF      & DNF       & DNF      & DNF      & DNF      \\
26    & 0,564326 & 1,691745 & 0,140759 & 0,111681 & 1,450164 \\
27    & 0,5289   & 1,865098 & 0,143931 & 0,114069 & 1,543377 \\
28    & 0,516241 & 1,59901   & 0,132596 & 0,113742 & 1,371806 \\
29    & DNF      & DNF       & DNF      & DNF      & DNF      \\
30    & 0,571863 & 1,418356 & 0,199889 & 0,164211 & 2,34488  \\
31    & 0,567696 & 1,804293 & 0,177851 & 0,164212 & 2,528032 \\
32    & 0,571863 & 1,561311 & 0,137783 & 0,164212 & 2,604332 \\
33    & 0,201794 & 1,509811 & 0,139263 & 0,085951 & 1,143824 \\
34    & 0,21418  & 1,578466 & 0,136489 & 0,09786  & 1,047962 \\
35    & 0,505872 & DNF       & 0,377743 & 0,131712 & DNF      \\
36    & 0,249232 & 1,624081 & 0,12902  & 0,071779 & 1,267764 \\
37    & 0,272594 & 1,597604 & 0,151409& 0,075146      & 1,187258 \\
38    & 0,611335 & 1,192883 & 0,126662 & DNF      & 0,88341 
\end{tabular}
\caption{Hausdorff Distance considering active power and voltage magnitude}
\label{pgvtotal}
\end{table}
