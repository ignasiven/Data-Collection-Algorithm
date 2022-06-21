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

