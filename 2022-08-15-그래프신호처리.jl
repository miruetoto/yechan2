### A Pluto.jl notebook ###
# v0.19.20

using Markdown
using InteractiveUtils

# ╔═╡ 7fa052b9-0b1a-4070-8df7-c6383479c7f9
using LinearAlgebra, PlutoUI,Images

# ╔═╡ 64384752-cc4c-4741-a70c-ccdf9e0b6124
md"""
# Statistical Graph Signal Processing
"""

# ╔═╡ 6f7665b8-81c3-400e-a839-f8671afcb0fc
md"""
## usings
"""

# ╔═╡ f1e0f4b9-0fb3-4f16-9d3f-9fc630f8082b
PlutoUI.TableOfContents()

# ╔═╡ 99d440c8-87b3-4111-95b0-428084dc1b69
md"""
## I. DSP: A quick represher
"""

# ╔═╡ 25d669b4-8ebf-433a-9edc-184aa6d56e3e
md"""
### Shift invariant operator
"""

# ╔═╡ f1660382-eeb4-44b5-8153-c4ea42261e63
md"""
The matrix ${\bf A}$ representing the periodic shift is 
"""

# ╔═╡ 336818c3-c856-4972-9d47-2d812ba51672
A = [
	0 0 0 0 1
	1 0 0 0 0 
	0 1 0 0 0
	0 0 1 0 0
	0 0 0 1 0
	]

# ╔═╡ f0f01a0e-097c-4c48-ba01-a78c842ba3ef
md"""
This matrix is the cyclic shift.
"""

# ╔═╡ 30be8e3f-03e6-456a-8683-bf46cd063490
md"""
*note*: ${\bf A}$ is orthogonal matrix.
"""

# ╔═╡ f0ec6157-2527-4bf5-8b9a-963de94ce1b3
A'A

# ╔═╡ 70513b25-2bf1-47c0-b768-f1ce1fe147a0
md"""
(ex1) Define ${\bf s}$ as 
"""

# ╔═╡ 8e2553a8-0357-419c-8623-95812388a179
s = [1,22,333,444,55555]

# ╔═╡ 4d4c7d21-46d3-4cef-8539-9b8b1565d700
md"""
Observe that 
"""

# ╔═╡ 0a4b60a5-b869-4858-b3ab-7bc808b0b7e6
A*s

# ╔═╡ 5e633002-193a-4507-bab0-237b936eed55
A^2*s

# ╔═╡ 7c78e64a-4aaa-4b8b-b6b5-e5a3a8bde6c7
A^3*s

# ╔═╡ ea20193b-184d-42c1-9323-5f88f2e483fc
md"""
Thus we can interprete the matrix ${\bf A}{\bf s}$ as "shift all values of ${\bf s}$ to right"
"""

# ╔═╡ 33e66bcc-2b75-4706-9084-d39a9c6f11a4
md"""
---
"""

# ╔═╡ b9dc7ad7-30cf-467e-8d60-f0091df12069
md"""
A generic filter $h$ is given by its $z$-transform 

$$h(z)=h_0z^0+h_1z^{-1}+\cdots +h_{N-1}z^{-(N-1)}.$$

In vector notation, and with respect to the standard basis ${\bf I}$, the filter is represented by the matrix ${\bf H}$, a polynomial in the cyclic shift

$${\bf H}=h({\bf A})=h_0{\bf A}^0+h_1{\bf A}^1+\cdots+h_{N-1}{\bf A}^{N-1}.$$
"""

# ╔═╡ ab81a4f7-ff58-45dc-aa37-93db5890d6e0
md"""
Thus we can interprete the matrix ${\bf A}{\bf s}$ as "shift all values of ${\bf s}$ to right".
"""

# ╔═╡ dbcc9201-20bc-473a-a296-995801dc4c95
md"""
Filters are *shift invariant* iff 

$$z\cdot h(z) = h(z)\cdot z$$ 

or 

$${\bf A}h({\bf A})=h({\bf A}){\bf A}.$$
"""

# ╔═╡ cf5f696a-25b5-4b01-92c7-a2bfbba8fd48
md"""
---
"""

# ╔═╡ 01fd47fc-d08f-4bb4-9c41-51dc4326d41b
md""" 
(ex2) Define ${\bf h}$ as 
"""

# ╔═╡ 42c698cc-d84b-426a-af3f-d752c4e1ee41
h = [0.1,0.2,0.3,0.2,0.1]

# ╔═╡ a97dc2ca-1e7f-447d-9739-1492e8fd9990
h₀,h₁,h₂,h₃,h₄ = h

# ╔═╡ 8fea2331-3740-439d-9954-daaf4ebc72ba
H = h₀*A^0 + h₁*A^1 + h₂*A^2 + h₃*A^3 + h₄*A^4

# ╔═╡ cde6afe5-5f94-4829-816c-6e1ee7cee9fa
md"""
Oberseve following:
"""

# ╔═╡ f1f18b21-e1dd-4d8b-9504-caa5d6fc71ca
A*H == H*A

# ╔═╡ 61ae80c8-3d38-49d4-81ef-85fed8dfe9b9
md"""
Thus, filter $h$ is shift invariant filter and matrix ${\bf H}$ is shift invariant operator. 
"""

# ╔═╡ 23a4064f-423c-49ff-8f6f-6b6d3a6d3025
md"""
---
"""

# ╔═╡ 93043488-296d-49d6-8c66-856fed48f04a
md"""
Finally, we observe that, from the Cayley-Hamilton Theorem, ${\bf A}$ satisfies its characteristic polynomial $\Delta({\bf A})$, where $\Delta(\lambda)$ is the determinant of $\lambda{\bf I}-{\bf A}$. The characteristic polynomial $\Delta({\bf A})$ has degree $N$, so, in DSP, as described so far, linear filters are (matrix) polynomial with degree at most $N-1$.
"""

# ╔═╡ d47ea67a-cb96-479d-9762-d84502b0f431
md"""
### Fourier Transform
"""

# ╔═╡ 4f963338-e4ba-4a75-95fc-d922fcb19703
md"""
The matrix ${\bf A}$ can be expressed as 

${\bf A}={\bf DFT}^\ast \cdot {\bf \Lambda} \cdot {\bf DFT}$

where ${\bf DFT}$ is unitary and symmetric matrix and $\bf \Lambda$ is diagonal matrix.
"""

# ╔═╡ 9fc34b04-d894-479f-a409-e7991d1e499a
md"""
---
"""

# ╔═╡ ce41d970-2ae8-415b-9d88-b4a184816465
md"""
(ex3)
"""

# ╔═╡ 5528b4db-dede-45f0-bf24-953f8003ee8a
λ, Ψ = eigen(A)

# ╔═╡ f1883704-061d-4e2e-a0e1-09a22441cb1c
A ≈ Ψ * Diagonal(λ) * Ψ'

# ╔═╡ 54716489-287d-4339-97e0-ccc95f05391f
md"""
Define ${\boldsymbol \Psi}^\ast={\bf DFT}$.
"""

# ╔═╡ 37beb89b-1e0e-48ce-9801-5347ee8b2b2c
DFT = Ψ'

# ╔═╡ 4ccee892-cb05-4460-bf68-491add5da4f3
md"""
Note that the eigenvalues are not ordered in julia.
"""

# ╔═╡ 2777a2e8-a205-45c9-9b02-ffa5c523fece
λ[5], exp(-im* 2π/5 * 0)

# ╔═╡ de676d2f-de07-4eb8-9dc5-db2bc8eff945
λ[3], exp(-im* 2π/5 * 1)

# ╔═╡ 54521037-8d5e-4d50-bc87-bdd43ca5bbdd
λ[1], exp(-im* 2π/5 * 2)

# ╔═╡ 3d9a7d76-ba90-4d4c-9281-72bc9dac48fe
λ[2], exp(-im* 2π/5 * 3)

# ╔═╡ a780b46b-2bac-4ec6-b908-a370e3fd9947
λ[4], exp(-im* 2π/5 * 4)

# ╔═╡ 0eada776-35be-4c39-8365-047d7b9c4e80
md"""
---
"""

# ╔═╡ da090e74-6e1a-40b3-997c-660f2529a8bf
md"""
We remark: 
"""

# ╔═╡ 1a5bccd8-d5e0-4522-81fa-f41e493d50e4
md"""
**(1) Spectral components**: For $\ell = 0,1,2,\dots, N-1$, the $\ell$-th column of ${\bf DFT}^\ast$ is defined by 

$\Psi_\ell:=\frac{1}{\sqrt{N}}\begin{bmatrix} 1 \\ e^{j\frac{2\pi}{N}\ell} \\ e^{j\frac{2\pi}{N}2\ell} \\ e^{j\frac{2\pi}{N}3\ell} \\  \dots \\ e^{j\frac{2\pi}{N}(N-1)\ell} \end{bmatrix}.$

Note that $\Psi_\ell$ can be also interpreted as $\ell$-th eigenvector of ${\bf A}$ correspoding $\lambda_\ell = e^{-j\frac{2\pi}{N}\ell}$. Those eigenvectors 

$$\big\{{\bf 1},\Psi_1,\Psi_2, \dots, \Psi_{N-1}\big\}$$

form a complete orthonomal basis of $\mathbb{C}^N$. These vectors are called spectral components. 
"""

# ╔═╡ 0dc15924-1ef5-4ab1-ad4b-f1d3ba64d0e3
md"""
**(2) Frequencies:** The diagonal entries of ${\bf \Lambda}$ are the eigenvalues of the time shift ${\bf A}$. In Physics and in operator theory, these eigenvalues are the frequencies of the signal. In DSP it is more common to call frequencies 

$$\Omega_\ell=\frac{-1}{2\pi j}\ln\lambda_\ell=\frac{-1}{2\pi j}\ln e^{-j \frac{2\pi}{N}\ell}=\frac{\ell}{N}, \quad \ell=0,1,2,\dots,N-1.$$
"""

# ╔═╡ 6d13c41f-d38a-4c10-8e50-5dfb24af4fa2
md"""
---
"""

# ╔═╡ 1a0a19ab-7cd6-4c9f-9d1d-736dec2de52c
md"""
The $N$ (time) frequencies $\Omega_\ell$ are all distinct, positive, equally spaced, and increasing from $0$ to $\frac{N-1}{N}$. The spectral components are the complex exponential sinusiodal functions. For example, corresponding to the zero frequency is the DC spectral component (a vector whose entries are constant and all equal to $\frac{1}{\sqrt{N}}$).
"""

# ╔═╡ 86f4e42a-b5e8-4d85-91c5-daf92bf70581
md"""
## II. GSP: 
"""

# ╔═╡ f3dd42dc-e8f8-43f2-9136-5e2290e11d53
md"""
### Notation
"""

# ╔═╡ 604c7f84-6b5b-42ba-a428-eb039d5c740d
md"""
##### *GSO*
"""

# ╔═╡ 0f4049d4-32bb-41f2-8047-b5492fdd7d24
md"""
Let ${\cal G}=({\cal N},{\cal E})$ be a directed graph or network with a set of $N$ nodes ${\cal N}$ directed edges ${\cal E}$ such that $(i,j) \in {\cal E}$ if there exists an edge from node $i$ to node $j$. We associate with ${\cal G}$ the graph shift operator (GSO) ${\bf S}$, defined as an $N\times N$ matrix whose entry $S_{ij}\neq 0$ only if $i=j$ or if $(i,j)\in {\cal E}$. 
"""

# ╔═╡ f7ab6491-5832-41d9-b541-20ec1c38fd4d
md"""
The sparsity pattern of ${\bf S}$ captures the local structure of ${\cal G}$, but we make no specific assumptions on the values of the nonzero entries of ${\bf S}$; hence GSO can represent the adjacency matrix, the Laplacian, or other graph-related matrices. 
"""

# ╔═╡ 8b09b2f3-fe6d-4f6c-9610-db1bbb2db9ad
md"""
---
"""

# ╔═╡ 84b79c3e-4d15-46f6-913a-7ffe9e6c39d3
md"""
![](https://github.com/miruetoto/yechan2/blob/main/img/GSO.png?raw=true)
"""

# ╔═╡ be4e6a69-27e1-49ef-b89d-b099e0d44765
md"""
*Figure*: (left) undirected graph (right) The format of GSO corresponding to left 
"""

# ╔═╡ 0952c263-4f48-4f6e-9846-7075e80e38a0
md"""
*note:* 매트릭스가 ${\bf S}$가 그래프 ${\cal G}=({\cal V},{\cal E})$에 대한 GSO이기 위해서는 (1) 대각선 혹은 (2) 엣지가 아닌 곳에서 모든 값이 0 이기만 하면 된다. 
"""

# ╔═╡ 1d5d11b1-82ca-4478-97b6-e61f9b4e5002
md"""
---
"""

# ╔═╡ 278b2a97-15b3-465f-a443-498d49172c0a
md"""
(ex1) Let ${\cal N} = \{v_1,v_2,v_3\}$ and ${\cal E}=\{(v_1,v_2),(v_2,v_3),(v_3,v_1)\}$. Then the matrix 

$${\bf S}=\begin{bmatrix} 0 & 1 & 0 \\ 0 & 0 & \frac{1}{2} \\ \frac{1}{3} & 0 & 0 \end{bmatrix}$$ 

is GSO of ${\cal G}=({\cal V},{\cal E})$.
"""

# ╔═╡ 04b7797a-9813-4307-b58c-e9d4fa6f615d
md"""
##### *Normal GSO, GFT*
"""

# ╔═╡ a5d6146e-3ea4-4191-b1bc-fc6ea2f5697f
md"""
We say ${\bf S}$ is normal iff there exist unitary matrix ${\bf V}$ and diagonal matrix $\bf \Lambda$ such that 

${\bf S}={\bf \Psi}{\bf \Lambda}{\bf \Psi}^*.$
"""

# ╔═╡ de6a8316-6802-470c-a1fd-6c6d74021be0
md"""
Futhermore we say $\Psi^*$ as GFT with respect to $\bf S$.
"""

# ╔═╡ 758e6479-692e-454f-a031-7b2c46830df2
md"""
*note*: ${\bf V}$ is unitray matrix iff ${\bf V}^*{\bf V}={\bf I}$
"""

# ╔═╡ 02b77d6d-761d-430b-951f-7fe61a1e7d1c
md"""
##### *Frequency representation of graph signal $\bf x$ with respect to $\bf \Psi^\ast$*
"""

# ╔═╡ f7ea05cc-9147-4b95-aaa2-7519a5ae3046
md"""
Let ${\bf x}$ be graph siganl and ${\bf \Psi}^*$ is GFT with respect to ${\bf S}$. We say 

${\bf \tilde x}:={\bf \Psi}^* {\bf x}$

as frequency response of ${\bf x}$ with respect to $\bf \Psi^*$.
"""

# ╔═╡ d8fa0e25-cf19-43c2-89c1-ac5a2724bcf7
md"""
##### *Linear shift-invariant graph filter*
"""

# ╔═╡ 802fde53-f155-463f-b1b8-262b294e44db
md"""
Let ${\bf S}$ be the normal GSO such that ${\bf S}={\bf \Psi}{\bf \Lambda}{\bf \Psi}^\ast$. Defince ${\bf H}:\mathbb{R}^N \to \mathbb{R}^N$ as linear shift-invariant graph filter of the form 

${\bf H}=\sum_{\ell =0}^{L-1}h_\ell {\bf S}^\ell={\bf \Psi}\text{diag}({\bf \tilde h}){\bf \Psi}^*={\bf \Psi}\text{diag}({\bf V}_L {\bf h}){\bf \Psi}^*$

where ${\bf \tilde h}$ denotes the frequency response of the filter ${\bf H}$, ${\bf V}_L$ is an $N \times L$ Vandermonde matrix such that 

${\bf V}_L=\begin{bmatrix} 1 & \lambda_1 & \dots & \lambda_1^{L-1} \\ \dots & \dots & \dots & \dots \\ 1 & \lambda_N & \dots & \lambda_N^{L-1}\end{bmatrix}$

, and ${\bf h}$ is a vector collecting the polynomial coefficients. Note that $\lambda_1\dots, \lambda_N$ are eigenvalues of normal GSO ${\bf S}$.
"""

# ╔═╡ 562f8511-cd84-41c9-9ef1-5516ffbd4ad0
md"""
(ex1)
"""

# ╔═╡ 18b27a70-ce68-474b-a26e-b427be7e49bb


# ╔═╡ 670bf2bd-18cc-45aa-8a52-def4160dc72d
md"""
### Weakly stationary graph process
"""

# ╔═╡ ea2030fc-2a03-4021-b950-0303eb3e366b
md"""
##### *Definition 1: Weakly Stationary Graph Process*
"""

# ╔═╡ 5deb558a-a69d-4b1b-826d-bf285f26f533
md"""
**DEFINITION** Given a normal shift operator ${\bf S}$, a zero-mean random process ${\bf x}$ is weakly stationary with respect to ${\bf S}$ if it can be written as the response of a linear shift-invariant graph filter ${\bf H}=\sum_{\ell=0}^{N-1}h_\ell {\bf S}^\ell$ to a zero-mean white input ${\bf n}$.
"""

# ╔═╡ 9c87564b-0c92-4402-b066-ca388ec93981
md"""
The definition generalizes the well-known fact that stationary processes in time can be expressed as the output of linear time-invariant systems with white noise as input. We can think of above as a constructive definition of stationary because it describes how a stationary process can be generated. 
"""

# ╔═╡ 9379e232-5086-48f3-875f-6a9f6a23c042
md"""
##### *Covariance Matrix of ${\bf x}$*
"""

# ╔═╡ 21622fe6-d2aa-4d5c-ac32-ad0abc614aae
md"""
The covariance matrix of ${\bf x}$ is defined as 

$${\bf C}_{\bf x}=\mathbb{E}[{\bf x}{\bf x}^H].$$

If we assume the ${\bf x}$ is weakly stationary process, we can write 

$${\bf C}_{\bf x}=\mathbb{E}[({\bf Hn})({\bf Hn})^H]={\bf H}\mathbb{E}({\bf n n}^H){\bf H}^H={\bf H}{\bf H}^H$$

which shows that the color of ${\bf x}$ is determined by the filter ${\bf H}$.

"""

# ╔═╡ f5ff9bdb-ebbd-4775-8aa6-eff7364f2183
md"""
##### *Definition 2: Weakly Stationary Graph Process*
"""

# ╔═╡ 96b7ed2d-46e7-4001-b796-edddcad9e35b
md"""
Given a normal shift operator ${\bf S}$, a zero-mean random process ${\bf x}$ is weakly stationary with respect to ${\bf S}$ if the following two equivalent properties hold 

(a) For any set of nonnegative integers $a$, $b$, and $c \leq b$ it holds that

$$\mathbb{E}\left[({\bf S}^a{\bf x})\big(({\bf S}^H)^b{\bf x}\big)^H \right]=\mathbb{E}\left[({\bf S}^{a+c}{\bf x})\big(({\bf S}^H)^{b-c}{\bf x}\big)^H \right].$$

(b) Matrices ${\bf C}_{\bf x}$ and ${\bf S}$ are simultaneously diagonalizable.
"""

# ╔═╡ fcd02b3a-e54c-4b0e-9046-21bd786d64fb
md"""
### Power spectral density
"""

# ╔═╡ 078a43e3-8f0d-40a3-8ac7-38a8ee21e30e


# ╔═╡ d2037fba-d6b2-439d-96f1-9076715e5072
md"""
## III. Estimation of PSD
"""

# ╔═╡ 05d86c9a-a1e8-4b02-a015-4e4c30dfac60
md"""
### Nonparametric PSD estimators
"""

# ╔═╡ 5512bac0-d460-44f7-8f7e-24c065bca17b


# ╔═╡ 4809cf5a-4ca0-461f-8660-f743cab63df2
md"""
### Parametric PSD estimators
"""

# ╔═╡ 2005d096-da25-4776-8b80-afa1e167d15f


# ╔═╡ 691df32f-ccbc-48dc-bd76-5ce308f17eb2
md"""
### Node subsampling for PSD estimation
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Images = "916415d5-f1e6-5110-898d-aaa5f9f070e0"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
Images = "~0.25.2"
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "540bf86dec3258399898629c79f39ec907d3e8c2"

[[deps.AbstractFFTs]]
deps = ["ChainRulesCore", "LinearAlgebra"]
git-tree-sha1 = "69f7020bd72f069c219b5e8c236c1fa90d2cb409"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.2.1"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "195c5505521008abea5aee4f96930717958eac6f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.4.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.ArnoldiMethod]]
deps = ["LinearAlgebra", "Random", "StaticArrays"]
git-tree-sha1 = "62e51b39331de8911e4a7ff6f5aaf38a5f4cc0ae"
uuid = "ec485272-7323-5ecc-a04f-4719b315124d"
version = "0.2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[deps.AxisArrays]]
deps = ["Dates", "IntervalSets", "IterTools", "RangeArrays"]
git-tree-sha1 = "1dd4d9f5beebac0c03446918741b1a03dc5e5788"
uuid = "39de3d68-74b9-583c-8d2d-e117c070f3a9"
version = "0.4.6"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CEnum]]
git-tree-sha1 = "eb4cb44a499229b3b8426dcfb5dd85333951ff90"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.4.2"

[[deps.CatIndices]]
deps = ["CustomUnitRanges", "OffsetArrays"]
git-tree-sha1 = "a0f80a09780eed9b1d106a1bf62041c2efc995bc"
uuid = "aafaddc9-749c-510e-ac4f-586e18779b91"
version = "0.2.2"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "e7ff6cadf743c098e08fca25c91103ee4303c9bb"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.6"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "38f7a08f19d8810338d4f5085211c7dfa5d5bdd8"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.4"

[[deps.Clustering]]
deps = ["Distances", "LinearAlgebra", "NearestNeighbors", "Printf", "Random", "SparseArrays", "Statistics", "StatsBase"]
git-tree-sha1 = "64df3da1d2a26f4de23871cd1b6482bb68092bd5"
uuid = "aaaa29a8-35af-508c-8bc3-b662a17a0fe5"
version = "0.14.3"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "d08c20eef1f2cbc6e60fd3612ac4340b89fea322"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.9"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "00a2cccc7f098ff3b66806862d275ca3db9e6e5a"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.5.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.ComputationalResources]]
git-tree-sha1 = "52cb3ec90e8a8bea0e62e275ba577ad0f74821f7"
uuid = "ed09eef8-17a6-5b46-8889-db040fac31e3"
version = "0.3.2"

[[deps.CoordinateTransformations]]
deps = ["LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "681ea870b918e7cff7111da58791d7f718067a19"
uuid = "150eb455-5306-5404-9cee-2592286d6298"
version = "0.6.2"

[[deps.CustomUnitRanges]]
git-tree-sha1 = "1a3f97f907e6dd8983b744d2642651bb162a3f7a"
uuid = "dc8bdbbb-1ca9-579f-8c36-e416f6a65cce"
version = "1.0.2"

[[deps.DataAPI]]
git-tree-sha1 = "e8119c1a33d267e16108be441a287a6981ba1630"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.14.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Distances]]
deps = ["LinearAlgebra", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "3258d0659f812acde79e8a74b11f17ac06d0ca04"
uuid = "b4f34e82-e78d-54a5-968a-f98e89d6e8f7"
version = "0.10.7"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FFTViews]]
deps = ["CustomUnitRanges", "FFTW"]
git-tree-sha1 = "cbdf14d1e8c7c8aacbe8b19862e0179fd08321c2"
uuid = "4f61f5a4-77b1-5117-aa51-3ab5ef4ef0cd"
version = "0.3.2"

[[deps.FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "90630efff0894f8142308e334473eba54c433549"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.5.0"

[[deps.FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c6033cc3892d0ef5bb9cd29b7f2f0331ea5184ea"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.10+0"

[[deps.FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "7be5f99f7d15578798f338f5433b6c432ea8037b"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.16.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Graphics]]
deps = ["Colors", "LinearAlgebra", "NaNMath"]
git-tree-sha1 = "d61890399bc535850c4bf08e4e0d3a7ad0f21cbd"
uuid = "a2bd30eb-e257-5431-a919-1863eab51364"
version = "1.1.2"

[[deps.Graphs]]
deps = ["ArnoldiMethod", "Compat", "DataStructures", "Distributed", "Inflate", "LinearAlgebra", "Random", "SharedArrays", "SimpleTraits", "SparseArrays", "Statistics"]
git-tree-sha1 = "ba2d094a88b6b287bd25cfa86f301e7693ffae2f"
uuid = "86223c79-3864-5bf0-83f7-82e725a168b6"
version = "1.7.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.ImageAxes]]
deps = ["AxisArrays", "ImageBase", "ImageCore", "Reexport", "SimpleTraits"]
git-tree-sha1 = "c54b581a83008dc7f292e205f4c409ab5caa0f04"
uuid = "2803e5a7-5153-5ecf-9a86-9b4c37f5f5ac"
version = "0.6.10"

[[deps.ImageBase]]
deps = ["ImageCore", "Reexport"]
git-tree-sha1 = "b51bb8cae22c66d0f6357e3bcb6363145ef20835"
uuid = "c817782e-172a-44cc-b673-b171935fbb9e"
version = "0.1.5"

[[deps.ImageContrastAdjustment]]
deps = ["ImageCore", "ImageTransformations", "Parameters"]
git-tree-sha1 = "0d75cafa80cf22026cea21a8e6cf965295003edc"
uuid = "f332f351-ec65-5f6a-b3d1-319c6670881a"
version = "0.3.10"

[[deps.ImageCore]]
deps = ["AbstractFFTs", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Graphics", "MappedArrays", "MosaicViews", "OffsetArrays", "PaddedViews", "Reexport"]
git-tree-sha1 = "acf614720ef026d38400b3817614c45882d75500"
uuid = "a09fc81d-aa75-5fe9-8630-4744c3626534"
version = "0.9.4"

[[deps.ImageDistances]]
deps = ["Distances", "ImageCore", "ImageMorphology", "LinearAlgebra", "Statistics"]
git-tree-sha1 = "b1798a4a6b9aafb530f8f0c4a7b2eb5501e2f2a3"
uuid = "51556ac3-7006-55f5-8cb3-34580c88182d"
version = "0.2.16"

[[deps.ImageFiltering]]
deps = ["CatIndices", "ComputationalResources", "DataStructures", "FFTViews", "FFTW", "ImageBase", "ImageCore", "LinearAlgebra", "OffsetArrays", "Reexport", "SparseArrays", "StaticArrays", "Statistics", "TiledIteration"]
git-tree-sha1 = "8b251ec0582187eff1ee5c0220501ef30a59d2f7"
uuid = "6a3955dd-da59-5b1f-98d4-e7296123deb5"
version = "0.7.2"

[[deps.ImageIO]]
deps = ["FileIO", "IndirectArrays", "JpegTurbo", "LazyModules", "Netpbm", "OpenEXR", "PNGFiles", "QOI", "Sixel", "TiffImages", "UUIDs"]
git-tree-sha1 = "342f789fd041a55166764c351da1710db97ce0e0"
uuid = "82e4d734-157c-48bb-816b-45c225c6df19"
version = "0.6.6"

[[deps.ImageMagick]]
deps = ["FileIO", "ImageCore", "ImageMagick_jll", "InteractiveUtils"]
git-tree-sha1 = "ca8d917903e7a1126b6583a097c5cb7a0bedeac1"
uuid = "6218d12a-5da1-5696-b52f-db25d2ecc6d1"
version = "1.2.2"

[[deps.ImageMagick_jll]]
deps = ["JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pkg", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "1c0a2295cca535fabaf2029062912591e9b61987"
uuid = "c73af94c-d91f-53ed-93a7-00f77d67a9d7"
version = "6.9.10-12+3"

[[deps.ImageMetadata]]
deps = ["AxisArrays", "ImageAxes", "ImageBase", "ImageCore"]
git-tree-sha1 = "36cbaebed194b292590cba2593da27b34763804a"
uuid = "bc367c6b-8a6b-528e-b4bd-a4b897500b49"
version = "0.9.8"

[[deps.ImageMorphology]]
deps = ["ImageCore", "LinearAlgebra", "Requires", "TiledIteration"]
git-tree-sha1 = "e7c68ab3df4a75511ba33fc5d8d9098007b579a8"
uuid = "787d08f9-d448-5407-9aad-5290dd7ab264"
version = "0.3.2"

[[deps.ImageQualityIndexes]]
deps = ["ImageContrastAdjustment", "ImageCore", "ImageDistances", "ImageFiltering", "LazyModules", "OffsetArrays", "Statistics"]
git-tree-sha1 = "0c703732335a75e683aec7fdfc6d5d1ebd7c596f"
uuid = "2996bd0c-7a13-11e9-2da2-2f5ce47296a9"
version = "0.3.3"

[[deps.ImageSegmentation]]
deps = ["Clustering", "DataStructures", "Distances", "Graphs", "ImageCore", "ImageFiltering", "ImageMorphology", "LinearAlgebra", "MetaGraphs", "RegionTrees", "SimpleWeightedGraphs", "StaticArrays", "Statistics"]
git-tree-sha1 = "36832067ea220818d105d718527d6ed02385bf22"
uuid = "80713f31-8817-5129-9cf8-209ff8fb23e1"
version = "1.7.0"

[[deps.ImageShow]]
deps = ["Base64", "FileIO", "ImageBase", "ImageCore", "OffsetArrays", "StackViews"]
git-tree-sha1 = "b563cf9ae75a635592fc73d3eb78b86220e55bd8"
uuid = "4e3cecfd-b093-5904-9786-8bbb286a6a31"
version = "0.3.6"

[[deps.ImageTransformations]]
deps = ["AxisAlgorithms", "ColorVectorSpace", "CoordinateTransformations", "ImageBase", "ImageCore", "Interpolations", "OffsetArrays", "Rotations", "StaticArrays"]
git-tree-sha1 = "8717482f4a2108c9358e5c3ca903d3a6113badc9"
uuid = "02fcd773-0e25-5acc-982a-7f6622650795"
version = "0.9.5"

[[deps.Images]]
deps = ["Base64", "FileIO", "Graphics", "ImageAxes", "ImageBase", "ImageContrastAdjustment", "ImageCore", "ImageDistances", "ImageFiltering", "ImageIO", "ImageMagick", "ImageMetadata", "ImageMorphology", "ImageQualityIndexes", "ImageSegmentation", "ImageShow", "ImageTransformations", "IndirectArrays", "IntegralArrays", "Random", "Reexport", "SparseArrays", "StaticArrays", "Statistics", "StatsBase", "TiledIteration"]
git-tree-sha1 = "03d1301b7ec885b266c0f816f338368c6c0b81bd"
uuid = "916415d5-f1e6-5110-898d-aaa5f9f070e0"
version = "0.25.2"

[[deps.Imath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "87f7662e03a649cffa2e05bf19c303e168732d3e"
uuid = "905a6f67-0a94-5f89-b386-d35d92009cd1"
version = "3.1.2+0"

[[deps.IndirectArrays]]
git-tree-sha1 = "012e604e1c7458645cb8b436f8fba789a51b257f"
uuid = "9b13fd28-a010-5f03-acff-a1bbcff69959"
version = "1.0.0"

[[deps.Inflate]]
git-tree-sha1 = "5cd07aab533df5170988219191dfad0519391428"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.3"

[[deps.IntegralArrays]]
deps = ["ColorTypes", "FixedPointNumbers", "IntervalSets"]
git-tree-sha1 = "be8e690c3973443bec584db3346ddc904d4884eb"
uuid = "1d092043-8f09-5a30-832f-7509e371ab51"
version = "0.1.5"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d979e54b71da82f3a65b62553da4fc3d18c9004c"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2018.0.3+2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Interpolations]]
deps = ["Adapt", "AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "721ec2cf720536ad005cb38f50dbba7b02419a15"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.14.7"

[[deps.IntervalSets]]
deps = ["Dates", "Random", "Statistics"]
git-tree-sha1 = "16c0cc91853084cb5f58a78bd209513900206ce6"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.7.4"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "49510dfcb407e572524ba94aeae2fced1f3feb0f"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.8"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.JLD2]]
deps = ["FileIO", "MacroTools", "Mmap", "OrderedCollections", "Pkg", "Printf", "Reexport", "TranscodingStreams", "UUIDs"]
git-tree-sha1 = "ec8a9c9f0ecb1c687e34c1fda2699de4d054672a"
uuid = "033835bb-8acc-5ee8-8aae-3f567f8a3819"
version = "0.4.29"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo]]
deps = ["CEnum", "FileIO", "ImageCore", "JpegTurbo_jll", "TOML"]
git-tree-sha1 = "a77b273f1ddec645d1b7c4fd5fb98c8f90ad10a5"
uuid = "b835a17e-a41a-41e7-81f0-2f016b05efe0"
version = "0.1.1"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[deps.LazyModules]]
git-tree-sha1 = "a560dd966b386ac9ae60bdd3a3d3a326062d3c3e"
uuid = "8cdb02fc-e678-4876-92c5-9defec4f444e"
version = "0.3.1"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "946607f84feb96220f480e0422d3484c49c00239"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.19"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "Pkg"]
git-tree-sha1 = "2ce8695e1e699b68702c03402672a69f54b8aca9"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2022.2.0+0"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.MappedArrays]]
git-tree-sha1 = "e8b359ef06ec72e8c030463fe02efe5527ee5142"
uuid = "dbb5928d-eab1-5f90-85c2-b9b0edb7c900"
version = "0.4.1"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.MetaGraphs]]
deps = ["Graphs", "JLD2", "Random"]
git-tree-sha1 = "2af69ff3c024d13bde52b34a2a7d6887d4e7b438"
uuid = "626554b9-1ddb-594c-aa3c-2596fe9399a5"
version = "0.7.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MosaicViews]]
deps = ["MappedArrays", "OffsetArrays", "PaddedViews", "StackViews"]
git-tree-sha1 = "7b86a5d4d70a9f5cdf2dacb3cbe6d251d1a61dbe"
uuid = "e94cdb99-869f-56ef-bcf0-1ae2bcbe0389"
version = "0.3.4"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "a7c3d1da1189a1c2fe843a3bfa04d18d20eb3211"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.1"

[[deps.NearestNeighbors]]
deps = ["Distances", "StaticArrays"]
git-tree-sha1 = "2c3726ceb3388917602169bed973dbc97f1b51a8"
uuid = "b8a86587-4115-5ab1-83bc-aa920d37bbce"
version = "0.4.13"

[[deps.Netpbm]]
deps = ["FileIO", "ImageCore", "ImageMetadata"]
git-tree-sha1 = "5ae7ca23e13855b3aba94550f26146c01d259267"
uuid = "f09324ee-3d7c-5217-9330-fc30815ba969"
version = "1.1.0"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "f71d8950b724e9ff6110fc948dff5a329f901d64"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.12.8"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.OpenEXR]]
deps = ["Colors", "FileIO", "OpenEXR_jll"]
git-tree-sha1 = "327f53360fdb54df7ecd01e96ef1983536d1e633"
uuid = "52e1d378-f018-4a11-a4be-720524705ac7"
version = "0.3.2"

[[deps.OpenEXR_jll]]
deps = ["Artifacts", "Imath_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "923319661e9a22712f24596ce81c54fc0366f304"
uuid = "18a262bb-aa17-5467-a713-aee519bc75cb"
version = "3.1.1+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PNGFiles]]
deps = ["Base64", "CEnum", "ImageCore", "IndirectArrays", "OffsetArrays", "libpng_jll"]
git-tree-sha1 = "f809158b27eba0c18c269cf2a2be6ed751d3e81d"
uuid = "f57f5aa1-a3ce-4bc8-8ab9-96f992907883"
version = "0.3.17"

[[deps.PaddedViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "03a7a85b76381a3d04c7a1656039197e70eda03d"
uuid = "5432bcbf-9aad-5242-b902-cca2824c8663"
version = "0.5.11"

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0044b23da09b5608b4ecacb4e5e6c6332f833a7e"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PkgVersion]]
deps = ["Pkg"]
git-tree-sha1 = "f6cf8e7944e50901594838951729a1861e668cb8"
uuid = "eebad327-c553-4316-9ea0-9fa01ccd7688"
version = "0.3.2"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "d7a7aef8f8f2d537104f170139553b14dfe39fe9"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.7.2"

[[deps.QOI]]
deps = ["ColorTypes", "FileIO", "FixedPointNumbers"]
git-tree-sha1 = "18e8f4d1426e965c7b532ddd260599e1510d26ce"
uuid = "4b34888f-f399-49d4-9bb3-47ed5cae4e65"
version = "1.0.0"

[[deps.Quaternions]]
deps = ["LinearAlgebra", "Random"]
git-tree-sha1 = "fcebf40de9a04c58da5073ec09c1c1e95944c79b"
uuid = "94ee1d12-ae83-5a48-8b1c-48b8ff168ae0"
version = "0.6.1"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RangeArrays]]
git-tree-sha1 = "b9039e93773ddcfc828f12aadf7115b4b4d225f5"
uuid = "b3c3ace0-ae52-54e7-9d0b-2c1406fd6b9d"
version = "0.3.2"

[[deps.Ratios]]
deps = ["Requires"]
git-tree-sha1 = "dc84268fe0e3335a62e315a3a7cf2afa7178a734"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.3"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RegionTrees]]
deps = ["IterTools", "LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "4618ed0da7a251c7f92e869ae1a19c74a7d2a7f9"
uuid = "dee08c22-ab7f-5625-9660-a9af2021b33f"
version = "0.3.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Rotations]]
deps = ["LinearAlgebra", "Quaternions", "Random", "StaticArrays", "Statistics"]
git-tree-sha1 = "793b6ef92f9e96167ddbbd2d9685009e200eb84f"
uuid = "6038ab10-8711-5258-84ad-4b1120ba62dc"
version = "1.3.3"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[deps.SimpleWeightedGraphs]]
deps = ["Graphs", "LinearAlgebra", "Markdown", "SparseArrays", "Test"]
git-tree-sha1 = "a6f404cc44d3d3b28c793ec0eb59af709d827e4e"
uuid = "47aef6b3-ad0c-573a-a1e2-d07658019622"
version = "1.2.1"

[[deps.Sixel]]
deps = ["Dates", "FileIO", "ImageCore", "IndirectArrays", "OffsetArrays", "REPL", "libsixel_jll"]
git-tree-sha1 = "8fb59825be681d451c246a795117f317ecbcaa28"
uuid = "45858cf5-a6b0-47a3-bbea-62219f50df47"
version = "0.1.2"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "a4ada03f999bd01b3a25dcaa30b2d929fe537e00"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.0"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "d75bda01f8c31ebb72df80a46c88b25d1c79c56d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.7"

[[deps.StackViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "46e589465204cd0c08b4bd97385e4fa79a0c770c"
uuid = "cae243ae-269e-4f55-b966-ac2d0dc13c15"
version = "0.1.1"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "StaticArraysCore", "Statistics"]
git-tree-sha1 = "ffc098086f35909741f71ce21d03dadf0d2bfa76"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.5.11"

[[deps.StaticArraysCore]]
git-tree-sha1 = "6b7ba252635a5eff6a0b0664a41ee140a1c9e72a"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TiffImages]]
deps = ["ColorTypes", "DataStructures", "DocStringExtensions", "FileIO", "FixedPointNumbers", "IndirectArrays", "Inflate", "Mmap", "OffsetArrays", "PkgVersion", "ProgressMeter", "UUIDs"]
git-tree-sha1 = "7e6b0e3e571be0b4dd4d2a9a3a83b65c04351ccc"
uuid = "731e570b-9d59-4bfa-96dc-6df516fadf69"
version = "0.6.3"

[[deps.TiledIteration]]
deps = ["OffsetArrays"]
git-tree-sha1 = "5683455224ba92ef59db72d10690690f4a8dc297"
uuid = "06e1c1a7-607b-532d-9fad-de7d9aa2abac"
version = "0.3.1"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "e4bdc63f5c6d62e80eb1c0043fcc0360d5950ff7"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.10"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "de67fa59e33ad156a590055375a30b23c40299d3"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libsixel_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "libpng_jll"]
git-tree-sha1 = "d4f63314c8aa1e48cd22aa0c17ed76cd1ae48c3c"
uuid = "075b6546-f08a-558a-be8f-8157d0f608a5"
version = "1.10.3+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─64384752-cc4c-4741-a70c-ccdf9e0b6124
# ╟─6f7665b8-81c3-400e-a839-f8671afcb0fc
# ╠═7fa052b9-0b1a-4070-8df7-c6383479c7f9
# ╠═f1e0f4b9-0fb3-4f16-9d3f-9fc630f8082b
# ╟─99d440c8-87b3-4111-95b0-428084dc1b69
# ╟─25d669b4-8ebf-433a-9edc-184aa6d56e3e
# ╟─f1660382-eeb4-44b5-8153-c4ea42261e63
# ╟─336818c3-c856-4972-9d47-2d812ba51672
# ╟─f0f01a0e-097c-4c48-ba01-a78c842ba3ef
# ╟─30be8e3f-03e6-456a-8683-bf46cd063490
# ╠═f0ec6157-2527-4bf5-8b9a-963de94ce1b3
# ╟─70513b25-2bf1-47c0-b768-f1ce1fe147a0
# ╠═8e2553a8-0357-419c-8623-95812388a179
# ╟─4d4c7d21-46d3-4cef-8539-9b8b1565d700
# ╠═0a4b60a5-b869-4858-b3ab-7bc808b0b7e6
# ╠═5e633002-193a-4507-bab0-237b936eed55
# ╠═7c78e64a-4aaa-4b8b-b6b5-e5a3a8bde6c7
# ╟─ea20193b-184d-42c1-9323-5f88f2e483fc
# ╟─33e66bcc-2b75-4706-9084-d39a9c6f11a4
# ╟─b9dc7ad7-30cf-467e-8d60-f0091df12069
# ╟─ab81a4f7-ff58-45dc-aa37-93db5890d6e0
# ╟─dbcc9201-20bc-473a-a296-995801dc4c95
# ╟─cf5f696a-25b5-4b01-92c7-a2bfbba8fd48
# ╠═01fd47fc-d08f-4bb4-9c41-51dc4326d41b
# ╠═42c698cc-d84b-426a-af3f-d752c4e1ee41
# ╠═a97dc2ca-1e7f-447d-9739-1492e8fd9990
# ╠═8fea2331-3740-439d-9954-daaf4ebc72ba
# ╟─cde6afe5-5f94-4829-816c-6e1ee7cee9fa
# ╠═f1f18b21-e1dd-4d8b-9504-caa5d6fc71ca
# ╟─61ae80c8-3d38-49d4-81ef-85fed8dfe9b9
# ╟─23a4064f-423c-49ff-8f6f-6b6d3a6d3025
# ╟─93043488-296d-49d6-8c66-856fed48f04a
# ╟─d47ea67a-cb96-479d-9762-d84502b0f431
# ╟─4f963338-e4ba-4a75-95fc-d922fcb19703
# ╟─9fc34b04-d894-479f-a409-e7991d1e499a
# ╟─ce41d970-2ae8-415b-9d88-b4a184816465
# ╠═5528b4db-dede-45f0-bf24-953f8003ee8a
# ╠═f1883704-061d-4e2e-a0e1-09a22441cb1c
# ╟─54716489-287d-4339-97e0-ccc95f05391f
# ╠═37beb89b-1e0e-48ce-9801-5347ee8b2b2c
# ╠═4ccee892-cb05-4460-bf68-491add5da4f3
# ╠═2777a2e8-a205-45c9-9b02-ffa5c523fece
# ╠═de676d2f-de07-4eb8-9dc5-db2bc8eff945
# ╠═54521037-8d5e-4d50-bc87-bdd43ca5bbdd
# ╠═3d9a7d76-ba90-4d4c-9281-72bc9dac48fe
# ╟─a780b46b-2bac-4ec6-b908-a370e3fd9947
# ╟─0eada776-35be-4c39-8365-047d7b9c4e80
# ╟─da090e74-6e1a-40b3-997c-660f2529a8bf
# ╟─1a5bccd8-d5e0-4522-81fa-f41e493d50e4
# ╟─0dc15924-1ef5-4ab1-ad4b-f1d3ba64d0e3
# ╟─6d13c41f-d38a-4c10-8e50-5dfb24af4fa2
# ╟─1a0a19ab-7cd6-4c9f-9d1d-736dec2de52c
# ╟─86f4e42a-b5e8-4d85-91c5-daf92bf70581
# ╟─f3dd42dc-e8f8-43f2-9136-5e2290e11d53
# ╟─604c7f84-6b5b-42ba-a428-eb039d5c740d
# ╟─0f4049d4-32bb-41f2-8047-b5492fdd7d24
# ╟─f7ab6491-5832-41d9-b541-20ec1c38fd4d
# ╟─8b09b2f3-fe6d-4f6c-9610-db1bbb2db9ad
# ╟─84b79c3e-4d15-46f6-913a-7ffe9e6c39d3
# ╟─be4e6a69-27e1-49ef-b89d-b099e0d44765
# ╟─0952c263-4f48-4f6e-9846-7075e80e38a0
# ╟─1d5d11b1-82ca-4478-97b6-e61f9b4e5002
# ╟─278b2a97-15b3-465f-a443-498d49172c0a
# ╟─04b7797a-9813-4307-b58c-e9d4fa6f615d
# ╟─a5d6146e-3ea4-4191-b1bc-fc6ea2f5697f
# ╟─de6a8316-6802-470c-a1fd-6c6d74021be0
# ╟─758e6479-692e-454f-a031-7b2c46830df2
# ╟─02b77d6d-761d-430b-951f-7fe61a1e7d1c
# ╟─f7ea05cc-9147-4b95-aaa2-7519a5ae3046
# ╟─d8fa0e25-cf19-43c2-89c1-ac5a2724bcf7
# ╟─802fde53-f155-463f-b1b8-262b294e44db
# ╟─562f8511-cd84-41c9-9ef1-5516ffbd4ad0
# ╠═18b27a70-ce68-474b-a26e-b427be7e49bb
# ╟─670bf2bd-18cc-45aa-8a52-def4160dc72d
# ╟─ea2030fc-2a03-4021-b950-0303eb3e366b
# ╟─5deb558a-a69d-4b1b-826d-bf285f26f533
# ╟─9c87564b-0c92-4402-b066-ca388ec93981
# ╟─9379e232-5086-48f3-875f-6a9f6a23c042
# ╟─21622fe6-d2aa-4d5c-ac32-ad0abc614aae
# ╟─f5ff9bdb-ebbd-4775-8aa6-eff7364f2183
# ╟─96b7ed2d-46e7-4001-b796-edddcad9e35b
# ╟─fcd02b3a-e54c-4b0e-9046-21bd786d64fb
# ╠═078a43e3-8f0d-40a3-8ac7-38a8ee21e30e
# ╟─d2037fba-d6b2-439d-96f1-9076715e5072
# ╟─05d86c9a-a1e8-4b02-a015-4e4c30dfac60
# ╠═5512bac0-d460-44f7-8f7e-24c065bca17b
# ╟─4809cf5a-4ca0-461f-8660-f743cab63df2
# ╠═2005d096-da25-4776-8b80-afa1e167d15f
# ╟─691df32f-ccbc-48dc-bd76-5ce308f17eb2
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
