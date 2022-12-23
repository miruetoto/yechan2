### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ 7fa052b9-0b1a-4070-8df7-c6383479c7f9
using LinearAlgebra, PlutoUI

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

# ╔═╡ ab81a4f7-ff58-45dc-aa37-93db5890d6e0
md"""
Thus we can interprete the matrix ${\bf A}$ as "${\bf A}{\bf s}$ = shift all values of ${\bf s}$ to right".
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

# ╔═╡ ae3250b3-74bb-4ee2-b549-d0844d1aaed5
h = [0.1,0.5,1,0.5,0.1]

# ╔═╡ 8fea2331-3740-439d-9954-daaf4ebc72ba
H = 0.1*A^0 + 0.5*A^1 + 1*A^2 + 0.5*A^3 + 0.1*A^4

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
Let ${\cal G}=({\cal N},{\cal E})$ be a directed graph or network with a set of $N$ nodes ${\cal N}$ directed edges ${\cal E}$ such that $(i,j) \in {\cal E}$ if there exists an edge from node $i$ to node $j$. We associate with ${\cal G}$ the graph shift operator (GSO) ${\bf S}$, defined as an $N\times N$ matrix whose entry $S_{ij}\neq 0$ only if $i\neq j$ or if $(i,j)\in {\cal E}$. 
"""

# ╔═╡ f7ab6491-5832-41d9-b541-20ec1c38fd4d
md"""
The sparsity pattern of ${\bf S}$ captures the local structure of ${\cal G}$, but we make no specific assumptions on the values of the nonzero entries of ${\bf S}$; hence GSO can represent the adjacency matrix, the Laplacian, or other graph-related matrices. 
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
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

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

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0044b23da09b5608b4ecacb4e5e6c6332f833a7e"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
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
# ╟─8e2553a8-0357-419c-8623-95812388a179
# ╟─4d4c7d21-46d3-4cef-8539-9b8b1565d700
# ╠═0a4b60a5-b869-4858-b3ab-7bc808b0b7e6
# ╠═5e633002-193a-4507-bab0-237b936eed55
# ╠═7c78e64a-4aaa-4b8b-b6b5-e5a3a8bde6c7
# ╟─ab81a4f7-ff58-45dc-aa37-93db5890d6e0
# ╟─33e66bcc-2b75-4706-9084-d39a9c6f11a4
# ╟─b9dc7ad7-30cf-467e-8d60-f0091df12069
# ╟─dbcc9201-20bc-473a-a296-995801dc4c95
# ╟─cf5f696a-25b5-4b01-92c7-a2bfbba8fd48
# ╟─01fd47fc-d08f-4bb4-9c41-51dc4326d41b
# ╟─ae3250b3-74bb-4ee2-b549-d0844d1aaed5
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
# ╟─4ccee892-cb05-4460-bf68-491add5da4f3
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
# ╟─04b7797a-9813-4307-b58c-e9d4fa6f615d
# ╟─a5d6146e-3ea4-4191-b1bc-fc6ea2f5697f
# ╟─de6a8316-6802-470c-a1fd-6c6d74021be0
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
