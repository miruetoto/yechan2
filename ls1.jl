### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 2df1ecc8-3690-470c-a295-178a19a7a57b
using PlutoUI

# ╔═╡ b5d7d6fb-8d84-40de-be59-4fbed7a0bf37
PlutoUI.TableOfContents()

# ╔═╡ 8a4515ef-43e6-4b14-b4e1-422da9a1481e
md"""
# 자료형
"""

# ╔═╡ 04ccddb0-000a-431c-939c-2b507564cff5
md"""
## 문자열
"""

# ╔═╡ da5bea8f-f288-4586-87b1-1c16f386cb29
md"""
`1`. 문자열 슬라이싱
"""

# ╔═╡ 8cec183e-0c79-4895-ab9e-1dfa11200865
"Jeonbuk National University"[1:7]

# ╔═╡ 73033fab-330e-4852-a81e-9356b7656987
md"""
`2`. 대문자를 소문자로 바꾸는 방법
"""

# ╔═╡ 9266930d-8688-46c7-9623-dc1bd19fe115
lowercase("HELLO, JULIA!")

# ╔═╡ 958d83a5-0a55-4ecb-8c56-39d710567813
md"""
`3`. 대문자와 소문자의 판단
"""

# ╔═╡ 7dfc8cf1-dc46-477a-90d7-762d852251a7
isuppercase('a'), islowercase('a')

# ╔═╡ 948a0a3b-23f8-4549-a0ac-7d980c9deaec
isuppercase('A'), islowercase('A')

# ╔═╡ 66881f6b-da14-42c4-95ce-c3a98e8b29b2
md"""
`4`. 문자열의 결합
"""

# ╔═╡ af0e4bad-b585-4fcb-9fc8-20c846950ca3
"a"*"b"

# ╔═╡ 5db159b9-89a5-442b-8dc7-90bf9bfd17e7
"asdf asdf" * "bbbb"

# ╔═╡ 99221e1e-9ca6-4fec-8505-7036acb8d883
md"""
`5`. 문자열의 반복
"""

# ╔═╡ 4116e7ee-2e59-404a-afe1-b1e8b33c5012
repeat("a",5)

# ╔═╡ d8d6d2ff-a421-487d-ae79-d170d56dc535
md"""
`6`. 문자열 끼워넣기
"""

# ╔═╡ d0537b56-15b8-46f4-a459-96e0e5ed781b
let 
	name = "최규빈"
	"제 이름은 $name 입니다"
end

# ╔═╡ d9ab08c9-4a3d-4acc-b51f-277c30f3d84d
md"""
`7`. 문자열 바꾸기 (replace)
"""

# ╔═╡ d4756b77-7c30-47a1-8469-1879247e62d4
replace("abcdefg", "g" => "u")

# ╔═╡ ce4a324b-c8dc-4430-a77b-b74d7aee3822
md"""
`8`. "a"와 'a'의 차이
"""

# ╔═╡ a97d0b1e-b809-41fa-910b-af2fee3aa45c
'a' # 단일문자

# ╔═╡ 8a807669-1413-4b1b-a631-f469b98265b3
"a" # 문자열

# ╔═╡ d937d933-372e-473a-a64e-10f2bd9d739b
"a"[1] # 'a'와 같음

# ╔═╡ f4f96579-bc8e-495f-901c-3d1650f9f55a
md"""
## 리스트
"""

# ╔═╡ b98e7ded-79f4-4cdd-bf6a-c482ba60ac05
md"""
`1`. 리스트의 원소를 반복시켜 길이가 $n$인 리스트 만들기
"""

# ╔═╡ 0c374ae5-ce7a-4951-a1d5-3f864d531f4c
fill(1,5)

# ╔═╡ 5bf793da-d852-4366-a7d2-95ac4403d65a
fill("a",5) # 이런식도 가능

# ╔═╡ ce4c8f06-2761-4955-b5a6-9e928e91a255
fill([1,2,3],5) # 이것도 가능

# ╔═╡ dd65b501-cc5f-42ea-8b39-c8d4f2f7a66b
md"""
`2`. 비어있는 리스트 만들기
"""

# ╔═╡ 50751ce5-b086-4735-b100-407905586605
[]

# ╔═╡ 2dd57eea-731f-4a4d-908a-2419c87fc48f
md"""
`3`. 리스트의 원소추가하기 (push!)
"""

# ╔═╡ 3cbac8cc-5214-42b5-9e81-26a30e97e712
push!([1,2,3],4)

# ╔═╡ 8fb3dc47-b7a0-42f2-8a60-e41dffe144de
push!([1,2,3],4,5,6)

# ╔═╡ 0f6aa508-50a3-428d-9917-81696e4b4586
let 
	a = [] 
	push!(a,1)
end

# ╔═╡ 426a7d5f-00e3-49ed-bd51-d7cf984f98fc
md"""
`4`. 리스트의 원소추가하기 (append!)
"""

# ╔═╡ 7a5aaf7e-7892-4b16-9b5c-03edcb889b2b
append!([1,2,3],4)

# ╔═╡ dd7a963e-be0a-4352-95ff-ed0960d00481
append!([1,2,3],[4])

# ╔═╡ 470c8d8a-10f6-4767-8ebe-b3169382e90c
append!([1,2,3],[4,5,6])

# ╔═╡ 094de25d-d6b1-4d1f-af86-4d6be3e3df62
md"""
`5`. [1,2] + [11,22] = [12,24] 계산하기
"""

# ╔═╡ b6038300-26b7-47a4-9154-54fd7e8bd798
[1,2] + [11,22]

# ╔═╡ d8bf7798-a44e-451f-88c5-fbaa64677c8d
md"""
`6`. [1,2] + 1 = [2,3] 계산하기
"""

# ╔═╡ 0060aac5-902c-4de6-b042-4137988c014c
[1,2] .+ 1 # 가능

# ╔═╡ 397fdbcf-6544-449e-a7e5-870f5a1f1fa1
# [1,2] + 1 # 불가능

# ╔═╡ 110076c8-7692-4e79-809e-2b0625580f62
md"""
`6`. [1,2]*2 = [2,4] 계산하기
"""

# ╔═╡ ae5f5111-77b3-4d40-b1cf-c564a41bc613
[1,2] * 2 # 가능

# ╔═╡ e7699521-19c1-4b40-8391-63ec4e5bf0da
[1,2] .* 2 # 가능

# ╔═╡ 6d94b424-9207-48ee-8720-58c6f42b4629
md"""
`7`. 리스트의 원소별곱셈적용하기
"""

# ╔═╡ 46e75e5a-212a-4e1c-b512-697e6089ca02
[1,2].*[3,4] # 가능

# ╔═╡ a3bc72cd-be63-4d02-aaa3-9fe89b8d14ad
# [1,2]*[3,4] # 불가능

# ╔═╡ 0a8d0b4b-86b3-4b8c-a24f-f1ac0a8f11ce
md"""
`8`. 중첩리스트에 덧셈적용하기 (하지마)
"""

# ╔═╡ a51585dc-eabb-407a-a696-ad9ee948a7b4
[[1,2,3],[1,2,3]] + [[1,2,3],[-1,-2,-3]]

# ╔═╡ 5e522b9b-cdce-4351-afc5-7cbd8258032f
md"""
`9`. 중첩리스트에 브로드캐스팅 적용하기 (하지마)
"""

# ╔═╡ 8d61e6a3-b279-4630-ae5d-90bfda2bb632
[[1,2,3],[1,2,3]] .+ [[-1,-2,-3]]

# ╔═╡ 858b5327-0a00-4666-bac7-45b8a73d90ab
# [[1,2,3],[1,2,3]] .+ [[-1],[-1]] # 불가능

# ╔═╡ 210a87ca-ca3d-48f8-9376-d186a057fe20
# [[1,2,3],[1,2,3]] .+ 1 # 불가능

# ╔═╡ a69c85e4-013e-41bf-8014-37ba098cc328
md"""
`10`. 리스트와 비교연산자
"""

# ╔═╡ 5929d8b7-55e7-4032-b9eb-cf722739e426
[80,60,80,90] .> 80

# ╔═╡ 21200609-1ce3-437e-8b3e-66877fb3788b
[80,60,80,90] .== 80

# ╔═╡ 43f02e0e-1b7e-499a-a3b8-157478db3e23
["A","B","C","D","A"] .== "A"

# ╔═╡ bb2da78f-8407-4e01-9c7c-a751952c404a
["A","B","C","D","A"] .> "A"

# ╔═╡ cfad010c-b731-4bee-aa23-31db8d84e47a
["A","B","C","D","A"] .>= "A"

# ╔═╡ f747c4da-9d56-4c3f-a3b3-bd7293fa119f
md"""
`11`. 제곱연산
"""

# ╔═╡ ae511f6b-fdf1-4740-9dc2-3914882b64d2
[1,2,3].^2 + [1,2,3].^2 

# ╔═╡ 8b405945-57df-4acd-8513-f88a1f839747
md"""
`12`. 대문자의 수를 count
"""

# ╔═╡ fb35b414-0352-4b7b-abe0-1a228e1b3a86
[isuppercase(str) for str in ['a','A','a','A']] # 방법1

# ╔═╡ ee18b1db-e9e9-4c0e-b2d2-d68b1b2c10fc
['a','A','a','A'] .|> isuppercase # 방법2

# ╔═╡ 256876fa-2c34-4490-b4c1-6c37218d2658
md"""
`13`. 문자열치환
"""

# ╔═╡ 88c4a706-73f2-43dd-9d66-7cc14a6a157e
replace.(["2022/09/21","2022/10/30"], "/" => "-")

# ╔═╡ 891fdc6a-a346-4652-85bf-ad433adc298a
md"""
`14`. 문자열 쪼개기와 합치기
"""

# ╔═╡ d4b239f8-f0e5-4784-b7fa-afa84ce17000
split("abcd","")

# ╔═╡ acfc4cbf-7620-4faf-8331-24647aca8b04
join(["a","b","c","d"])

# ╔═╡ 2cb82f2f-a870-4f34-8599-a6b8a42a3f51
md"""
`15`. 통일되지 않은 자료형
"""

# ╔═╡ 5ef70562-3a73-42f0-a8d9-832903892f66
[1,2,"a","abc"] # 가능은함

# ╔═╡ a14bbd87-e458-495f-88a6-9f848b3337b7
md"""
`16`. 리스트를 매트릭스로 만들기
"""

# ╔═╡ 90b31583-cd9c-433e-a4f6-d2998d5bdd59
reshape([1,2,3,4],(2,2))

# ╔═╡ 50bd2696-2bef-489a-b20f-3d17134d6c60
md"""
`17`. 리스트의 각원소에 reshape 적용하기
"""

# ╔═╡ 696a3af4-e19a-424b-98a7-18d233633430
let 
	f(x)=reshape(x,(2,2))
	f.([[1,2,3,4],[1,2,3,4]])
end

# ╔═╡ 0845f68a-2020-45bf-b89d-b9d1c9a40940
md"""
`18`. 아래의 text는 모두 몇개의 문장으로 이루어져 있는가?
"""

# ╔═╡ 57afe948-3f7f-43d7-91bb-f8ffc28a6c1e
let 
	text = "국내뿐 아니라 해외 인기도 심상치 않다. 2023년 1월 18일 'Ditto'가 빌보드 핫 100에 96위로 진입했다. 이는 K-pop 역사상 데뷔후 최단 빌보드 Hot 100 차트 입성 기록이다. 다른 뮤지션들이 보통 데뷔 후 수년간 쌓아온 팬덤을 기반으로 빌보드에 입성한데 비해, 뉴진스의 기록은 이례적인 것으로 평가받고 있다. 또한 'OMG'가 빌보드 핫 100에 91위로 진입한 동시에 'Ditto'는 85위로 순위가 상승, 핫 100 주간차트에 두 곡을 올려놓았다. K-Pop 역사상 이 차트에 두 곡 이상을 진입시킨 아티스트는 방탄소년단과 블랙핑크가 유일하다. 'Ditto'는 1월 셋째주 기준, 빌보드뿐만 아니라 영국 오피셜 싱글 차트 '톱 100'에 2주 연속 진입하기도 했다."
	length(split(text,"."))
end

# ╔═╡ c99ad43a-7d99-4bc3-b8cf-c7b113df9ac2
md"""
`19`. 포함연산자
"""

# ╔═╡ c53b6077-8806-4ab8-afdb-83628da7dc68
1 in [1,2,3]

# ╔═╡ 963a99de-dbd0-42ad-ae94-b329bafc6574
"a" in ["a","b","c"]

# ╔═╡ e847d23b-2e2d-44cd-a3d4-a5871b5099aa
"d" in ["a","b","c"]

# ╔═╡ 43888dda-0dae-4835-820c-0f3576638162
md"""
`20`. collect를 이용하여 수열 쉽게 선언하기
"""

# ╔═╡ 64c7ab90-36f9-4730-86cd-1568b6dcc42d
collect(1:10)

# ╔═╡ ba99ec8e-86fd-46b7-ba51-400435c630e9
collect(1:2.5:10)

# ╔═╡ 14a8d039-acf6-4ab4-8973-f4aa2e06d4b7
collect((1:1000)/1000)

# ╔═╡ 2ea6fedc-f3d0-49e1-9ca2-a57411084f13
collect(-10:2:10)

# ╔═╡ 56e70672-a2d0-4c22-9e03-421047bfd557
md"""
`21`. 
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.52"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "f5c06f335ceddc089c816627725c7f55bb23b077"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

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
version = "1.0.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

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
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

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

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "4b2e829ee66d4218e0cef22c0a64ee37cf258c29"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e47cd150dbe0443c3a3651bc5b9cbd5576ab75b7"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.52"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

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
version = "0.7.0"

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
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

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
# ╠═2df1ecc8-3690-470c-a295-178a19a7a57b
# ╠═b5d7d6fb-8d84-40de-be59-4fbed7a0bf37
# ╟─8a4515ef-43e6-4b14-b4e1-422da9a1481e
# ╟─04ccddb0-000a-431c-939c-2b507564cff5
# ╟─da5bea8f-f288-4586-87b1-1c16f386cb29
# ╠═8cec183e-0c79-4895-ab9e-1dfa11200865
# ╟─73033fab-330e-4852-a81e-9356b7656987
# ╠═9266930d-8688-46c7-9623-dc1bd19fe115
# ╟─958d83a5-0a55-4ecb-8c56-39d710567813
# ╠═7dfc8cf1-dc46-477a-90d7-762d852251a7
# ╠═948a0a3b-23f8-4549-a0ac-7d980c9deaec
# ╟─66881f6b-da14-42c4-95ce-c3a98e8b29b2
# ╠═af0e4bad-b585-4fcb-9fc8-20c846950ca3
# ╠═5db159b9-89a5-442b-8dc7-90bf9bfd17e7
# ╟─99221e1e-9ca6-4fec-8505-7036acb8d883
# ╠═4116e7ee-2e59-404a-afe1-b1e8b33c5012
# ╟─d8d6d2ff-a421-487d-ae79-d170d56dc535
# ╠═d0537b56-15b8-46f4-a459-96e0e5ed781b
# ╟─d9ab08c9-4a3d-4acc-b51f-277c30f3d84d
# ╠═d4756b77-7c30-47a1-8469-1879247e62d4
# ╟─ce4a324b-c8dc-4430-a77b-b74d7aee3822
# ╠═a97d0b1e-b809-41fa-910b-af2fee3aa45c
# ╠═8a807669-1413-4b1b-a631-f469b98265b3
# ╠═d937d933-372e-473a-a64e-10f2bd9d739b
# ╟─f4f96579-bc8e-495f-901c-3d1650f9f55a
# ╟─b98e7ded-79f4-4cdd-bf6a-c482ba60ac05
# ╠═0c374ae5-ce7a-4951-a1d5-3f864d531f4c
# ╠═5bf793da-d852-4366-a7d2-95ac4403d65a
# ╠═ce4c8f06-2761-4955-b5a6-9e928e91a255
# ╟─dd65b501-cc5f-42ea-8b39-c8d4f2f7a66b
# ╠═50751ce5-b086-4735-b100-407905586605
# ╟─2dd57eea-731f-4a4d-908a-2419c87fc48f
# ╠═3cbac8cc-5214-42b5-9e81-26a30e97e712
# ╠═8fb3dc47-b7a0-42f2-8a60-e41dffe144de
# ╠═0f6aa508-50a3-428d-9917-81696e4b4586
# ╟─426a7d5f-00e3-49ed-bd51-d7cf984f98fc
# ╠═7a5aaf7e-7892-4b16-9b5c-03edcb889b2b
# ╠═dd7a963e-be0a-4352-95ff-ed0960d00481
# ╠═470c8d8a-10f6-4767-8ebe-b3169382e90c
# ╟─094de25d-d6b1-4d1f-af86-4d6be3e3df62
# ╠═b6038300-26b7-47a4-9154-54fd7e8bd798
# ╟─d8bf7798-a44e-451f-88c5-fbaa64677c8d
# ╠═0060aac5-902c-4de6-b042-4137988c014c
# ╠═397fdbcf-6544-449e-a7e5-870f5a1f1fa1
# ╟─110076c8-7692-4e79-809e-2b0625580f62
# ╠═ae5f5111-77b3-4d40-b1cf-c564a41bc613
# ╠═e7699521-19c1-4b40-8391-63ec4e5bf0da
# ╟─6d94b424-9207-48ee-8720-58c6f42b4629
# ╠═46e75e5a-212a-4e1c-b512-697e6089ca02
# ╠═a3bc72cd-be63-4d02-aaa3-9fe89b8d14ad
# ╟─0a8d0b4b-86b3-4b8c-a24f-f1ac0a8f11ce
# ╠═a51585dc-eabb-407a-a696-ad9ee948a7b4
# ╟─5e522b9b-cdce-4351-afc5-7cbd8258032f
# ╠═8d61e6a3-b279-4630-ae5d-90bfda2bb632
# ╠═858b5327-0a00-4666-bac7-45b8a73d90ab
# ╠═210a87ca-ca3d-48f8-9376-d186a057fe20
# ╟─a69c85e4-013e-41bf-8014-37ba098cc328
# ╠═5929d8b7-55e7-4032-b9eb-cf722739e426
# ╠═21200609-1ce3-437e-8b3e-66877fb3788b
# ╠═43f02e0e-1b7e-499a-a3b8-157478db3e23
# ╠═bb2da78f-8407-4e01-9c7c-a751952c404a
# ╠═cfad010c-b731-4bee-aa23-31db8d84e47a
# ╟─f747c4da-9d56-4c3f-a3b3-bd7293fa119f
# ╠═ae511f6b-fdf1-4740-9dc2-3914882b64d2
# ╟─8b405945-57df-4acd-8513-f88a1f839747
# ╠═fb35b414-0352-4b7b-abe0-1a228e1b3a86
# ╠═ee18b1db-e9e9-4c0e-b2d2-d68b1b2c10fc
# ╟─256876fa-2c34-4490-b4c1-6c37218d2658
# ╠═88c4a706-73f2-43dd-9d66-7cc14a6a157e
# ╟─891fdc6a-a346-4652-85bf-ad433adc298a
# ╠═d4b239f8-f0e5-4784-b7fa-afa84ce17000
# ╠═acfc4cbf-7620-4faf-8331-24647aca8b04
# ╟─2cb82f2f-a870-4f34-8599-a6b8a42a3f51
# ╠═5ef70562-3a73-42f0-a8d9-832903892f66
# ╟─a14bbd87-e458-495f-88a6-9f848b3337b7
# ╠═90b31583-cd9c-433e-a4f6-d2998d5bdd59
# ╟─50bd2696-2bef-489a-b20f-3d17134d6c60
# ╠═696a3af4-e19a-424b-98a7-18d233633430
# ╟─0845f68a-2020-45bf-b89d-b9d1c9a40940
# ╠═57afe948-3f7f-43d7-91bb-f8ffc28a6c1e
# ╟─c99ad43a-7d99-4bc3-b8cf-c7b113df9ac2
# ╠═c53b6077-8806-4ab8-afdb-83628da7dc68
# ╠═963a99de-dbd0-42ad-ae94-b329bafc6574
# ╠═e847d23b-2e2d-44cd-a3d4-a5871b5099aa
# ╟─43888dda-0dae-4835-820c-0f3576638162
# ╠═64c7ab90-36f9-4730-86cd-1568b6dcc42d
# ╠═ba99ec8e-86fd-46b7-ba51-400435c630e9
# ╠═14a8d039-acf6-4ab4-8973-f4aa2e06d4b7
# ╠═2ea6fedc-f3d0-49e1-9ca2-a57411084f13
# ╠═56e70672-a2d0-4c22-9e03-421047bfd557
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
