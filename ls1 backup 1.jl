### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 2df1ecc8-3690-470c-a295-178a19a7a57b
using PlutoUI,LinearAlgebra

# ╔═╡ 4cce08e2-2948-4628-a28a-3153d21baf53
begin 
	using GLMakie
	using GraphMakie
	using Graphs
	g = complete_graph(10)
	graphplot(g)
end

# ╔═╡ 02f15a5f-c552-4651-804c-727439808aa6
md"""
# using
"""

# ╔═╡ b5d7d6fb-8d84-40de-be59-4fbed7a0bf37
PlutoUI.TableOfContents()

# ╔═╡ 9106019b-8d46-4d4e-9c8d-ec471bf94148
md"""
# 0차원 자료형
"""

# ╔═╡ 8a4515ef-43e6-4b14-b4e1-422da9a1481e
md"""
## 문자
"""

# ╔═╡ d40778e9-a3bc-4b37-aa91-a2e2aee1bdf1
md"""
### 선언 및 자료형
"""

# ╔═╡ 926a79a0-529a-4d3f-a6bd-02a244f59439
Char(66)

# ╔═╡ 25101df4-57f0-469f-8b2b-6730fbc615f4
'B'

# ╔═╡ 73a99e81-75b1-4b22-a79e-0e5e276142c4
typeof('b')

# ╔═╡ 958d83a5-0a55-4ecb-8c56-39d710567813
md"""
### `isuppercase`: 대소문자 판단
"""

# ╔═╡ 7dfc8cf1-dc46-477a-90d7-762d852251a7
isuppercase('a'), islowercase('a')

# ╔═╡ 948a0a3b-23f8-4549-a0ac-7d980c9deaec
isuppercase('A'), islowercase('A')

# ╔═╡ 62494a20-408b-45e4-8838-22c3f082ec89
md"""
# 1차원 자료형
"""

# ╔═╡ 715986c9-4d84-4ddb-9603-f547cd2f7615
md"""
## 문자열
"""

# ╔═╡ 122d6d0b-40ed-40f8-9228-a3c0710695e4
md"""
### 선언
"""

# ╔═╡ 30e6f0ff-47f2-45e1-9fd4-a10a172270a7
"a"

# ╔═╡ 57c38d04-45b9-4299-9296-fb39d6e9323d
md"""
### 자료형
"""

# ╔═╡ d035611d-8eb4-4bec-93fe-33193bb65608
typeof("a")

# ╔═╡ ce4a324b-c8dc-4430-a77b-b74d7aee3822
md"""
### "a"와 'a'의 차이
"""

# ╔═╡ a97d0b1e-b809-41fa-910b-af2fee3aa45c
'a' # 단일문자

# ╔═╡ 8a807669-1413-4b1b-a631-f469b98265b3
"a" # 문자열

# ╔═╡ d937d933-372e-473a-a64e-10f2bd9d739b
"a"[1] # 'a'와 같음

# ╔═╡ da5bea8f-f288-4586-87b1-1c16f386cb29
md"""
### `[end-10:end]`: 문자열 슬라이싱
"""

# ╔═╡ 8cec183e-0c79-4895-ab9e-1dfa11200865
"Jeonbuk National University"[end-10:end]

# ╔═╡ 73033fab-330e-4852-a81e-9356b7656987
md"""
### `lowercase`: 대문자를 소문자로 바꾸는 방법
"""

# ╔═╡ 9266930d-8688-46c7-9623-dc1bd19fe115
lowercase("HELLO, JULIA!")

# ╔═╡ 66881f6b-da14-42c4-95ce-c3a98e8b29b2
md"""
### `*`: 문자열의 결합
"""

# ╔═╡ af0e4bad-b585-4fcb-9fc8-20c846950ca3
"a"*"b"

# ╔═╡ 5db159b9-89a5-442b-8dc7-90bf9bfd17e7
"asdf asdf" * "bbbb"

# ╔═╡ 99221e1e-9ca6-4fec-8505-7036acb8d883
md"""
### `repeat`: 문자열의 반복
"""

# ╔═╡ 4116e7ee-2e59-404a-afe1-b1e8b33c5012
repeat("a",5)

# ╔═╡ d8d6d2ff-a421-487d-ae79-d170d56dc535
md"""
### `$name`: 문자열 끼워넣기
"""

# ╔═╡ d0537b56-15b8-46f4-a459-96e0e5ed781b
let 
	name = "최규빈"
	"제 이름은 $name 입니다"
end

# ╔═╡ d9ab08c9-4a3d-4acc-b51f-277c30f3d84d
md"""
### `replace`: 문자열 바꾸기
"""

# ╔═╡ d4756b77-7c30-47a1-8469-1879247e62d4
replace("abcdefg", "g" => "u")

# ╔═╡ 0845f68a-2020-45bf-b89d-b9d1c9a40940
md"""
### `split`: 문자열 나누기
"""

# ╔═╡ 57afe948-3f7f-43d7-91bb-f8ffc28a6c1e
let 
	text = "국내뿐 아니라 해외 인기도 심상치 않다. 2023년 1월 18일 'Ditto'가 빌보드 핫 100에 96위로 진입했다. 이는 K-pop 역사상 데뷔후 최단 빌보드 Hot 100 차트 입성 기록이다. 다른 뮤지션들이 보통 데뷔 후 수년간 쌓아온 팬덤을 기반으로 빌보드에 입성한데 비해, 뉴진스의 기록은 이례적인 것으로 평가받고 있다. 또한 'OMG'가 빌보드 핫 100에 91위로 진입한 동시에 'Ditto'는 85위로 순위가 상승, 핫 100 주간차트에 두 곡을 올려놓았다. K-Pop 역사상 이 차트에 두 곡 이상을 진입시킨 아티스트는 방탄소년단과 블랙핑크가 유일하다. 'Ditto'는 1월 셋째주 기준, 빌보드뿐만 아니라 영국 오피셜 싱글 차트 '톱 100'에 2주 연속 진입하기도 했다."
	length(split(text,"."))
end

# ╔═╡ c8322814-78d8-4463-b827-41cf36fe18b4
md"""
### `join`: 문자열합치기
"""

# ╔═╡ d0d7e5cf-b886-4031-a996-6514173fb6b9
join(["a","b","c","d"])

# ╔═╡ acfc4cbf-7620-4faf-8331-24647aca8b04
split("abcd","")

# ╔═╡ 39c0a1c7-9261-40af-971e-2c1760c7f67c
md"""
## Tuple
"""

# ╔═╡ bcd32e50-bb86-4762-ad10-33ea633761e7
md"""
### 선언
"""

# ╔═╡ cae3fb55-28fa-4bbf-aca1-85292eb4adac
(1,2)

# ╔═╡ 4a96b99d-f016-45a0-8420-e5e58610d1fb
1,2,3

# ╔═╡ 4219327a-23db-430c-af40-b060be4da7d3
md"""
### 자료형
"""

# ╔═╡ c8cfe9c6-3fa0-4d59-95bb-e02d120d2039
typeof((1,2))

# ╔═╡ 7c556a96-5d30-4a2d-b81d-821f98eb6b70
md"""
### 원소별 비교연산
"""

# ╔═╡ 43f02e0e-1b7e-499a-a3b8-157478db3e23
("A","B","C","D","A") .== "A"

# ╔═╡ bb2da78f-8407-4e01-9c7c-a751952c404a
("A","B","C","D","A") .> "A"

# ╔═╡ cfad010c-b731-4bee-aa23-31db8d84e47a
("A","B","C","D","A") .>= "A"

# ╔═╡ 8b405945-57df-4acd-8513-f88a1f839747
md"""
### 컴프리헨션 
"""

# ╔═╡ fb35b414-0352-4b7b-abe0-1a228e1b3a86
[isuppercase(str) for str in ['a','A','a','A']] # 방법1

# ╔═╡ ee18b1db-e9e9-4c0e-b2d2-d68b1b2c10fc
['a','A','a','A'] .|> isuppercase # 방법2

# ╔═╡ 256876fa-2c34-4490-b4c1-6c37218d2658
md"""
### 브로드캐스팅 
"""

# ╔═╡ 7b4e7543-5a01-415b-83bc-cbfbb76d44e5
md"""
#### `replace.` -- 연쇄치환
"""

# ╔═╡ 88c4a706-73f2-43dd-9d66-7cc14a6a157e
replace.(("2022/09/21","2022/10/30"), "/" => "-")

# ╔═╡ c99ad43a-7d99-4bc3-b8cf-c7b113df9ac2
md"""
### 포함연산자
"""

# ╔═╡ c53b6077-8806-4ab8-afdb-83628da7dc68
1 in (1,2,3)

# ╔═╡ 963a99de-dbd0-42ad-ae94-b329bafc6574
"a" in ("a","b","c")

# ╔═╡ 5846dfe1-b312-437d-b3da-0f5674b1fa5a
'a' in "ab"

# ╔═╡ 14b3e1d3-3d54-435a-822c-ddb866f1ce8f
in.('a',("ab","bc","cd"))

# ╔═╡ 56e70672-a2d0-4c22-9e03-421047bfd557
md"""
### 언패킹
"""

# ╔═╡ b6dde50e-6854-4856-9754-942f2ab2ec74
md"""
-- 기본언패킹
"""

# ╔═╡ e89311b3-2217-4032-9e5f-d68ebf67f78b
let 
	a,b,c = (1,2,3)
	a
end

# ╔═╡ debddf9e-348b-4455-b9b6-d2a2f7c6313b
md"""
-- 플레이스홀더
"""

# ╔═╡ 00fb0699-3136-470d-a6af-f3efde8fa45b
let
	a,_,b = (1,2,3)
	a,b
end

# ╔═╡ 17ebce55-d32a-4d03-b939-7c04b165b25a
md"""
-- 앞에 2개만 받아짐
"""

# ╔═╡ e231d724-c735-4bfc-bd65-3c8fc7a071db
let 
	a,b = (1,2,3)
	a,b
end 

# ╔═╡ 16b3e4e3-a74c-403b-bc42-06836980d0fa
md"""
-- 스플래팅!
"""

# ╔═╡ 66602223-7685-4e66-ad35-8a0221912a06
let
	a,b... = (1,2,3,4,5)
	a,b
end

# ╔═╡ a3770fc6-05b0-4d7e-b533-8450f7dcc8fe
md"""
*스플래팅 보충학습*
"""

# ╔═╡ 3f159028-5616-4130-95e7-171b12d91c49
Print([1,2,3,4,5]...) # 스플래팅!!

# ╔═╡ f4f96579-bc8e-495f-901c-3d1650f9f55a
md"""
## Vector{Int64} //Array{Int64, 1}
"""

# ╔═╡ d3be5885-2dc4-41aa-af09-c930cdd122ec
md"""
### 선언
"""

# ╔═╡ 76631b58-b6b1-435b-82fb-f0cc21138cbe
[1,2,3]

# ╔═╡ f2afa715-d817-4c7e-b68b-2a4719c37643
Float64[1,2,3]

# ╔═╡ fd218bdb-8fc7-4358-b7eb-c968a4642e3d
[1;2;3]

# ╔═╡ 93152114-cb4f-4b2b-ba3a-53208b93a3a6
[
	1
	2
	3
]

# ╔═╡ f361cefa-18ea-45f8-aab8-4b2a6f36fa59
md"""
### 자료형
"""

# ╔═╡ 9fcfb75e-8ef7-4916-98c8-fb84f299c7db
typeof([1,2,3])

# ╔═╡ b24ababe-d63b-4901-8da9-1e89c42c8603
md"""
### 차원
"""

# ╔═╡ ecd5ea13-1410-4966-b78d-0384385bf819
ndims([1,2,3])

# ╔═╡ 34336ed2-2087-4567-898e-4911c1da4bba
md"""
### 길이
"""

# ╔═╡ 66763be8-c5c6-4120-bf49-bc2a350785d7
length([1,2,3])

# ╔═╡ 2cb82f2f-a870-4f34-8599-a6b8a42a3f51
md"""
### 원소의 자료형이 다른 경우
"""

# ╔═╡ 5ef70562-3a73-42f0-a8d9-832903892f66
[1,2,'a',"abc"] 

# ╔═╡ a69c85e4-013e-41bf-8014-37ba098cc328
md"""
### 원소별 비교연산
"""

# ╔═╡ 5929d8b7-55e7-4032-b9eb-cf722739e426
[80,60,80,90] .> 80

# ╔═╡ 21200609-1ce3-437e-8b3e-66877fb3788b
[80,60,80,90] .== 80

# ╔═╡ b98e7ded-79f4-4cdd-bf6a-c482ba60ac05
md"""
### `fill` -- 원소반복
"""

# ╔═╡ 0c374ae5-ce7a-4951-a1d5-3f864d531f4c
fill(1,5)

# ╔═╡ 5bf793da-d852-4366-a7d2-95ac4403d65a
fill("a",5) # 이런식도 가능

# ╔═╡ ce4c8f06-2761-4955-b5a6-9e928e91a255
fill([1,2,3],5) # 이것도 가능

# ╔═╡ 5e425985-9fa3-4596-bd1d-4c5e81f5ccce
md"""
### `ones`, `zeros` 
"""

# ╔═╡ 44f478bf-25d8-4f82-a5cc-e0e1f7833635
ones(100)

# ╔═╡ f8bf2461-0806-4957-a6fd-20a738f49350
zeros(100)

# ╔═╡ 43888dda-0dae-4835-820c-0f3576638162
md"""
### `range` + `collect`, `Array`
"""

# ╔═╡ cf018dde-93d6-46e5-9d13-83a1472a9bdb
md"""
-- `range` 와 스트라이딩
"""

# ╔═╡ 5783921e-3218-4045-a0fb-b5220f832d6c
1:10

# ╔═╡ d769087b-27ed-4079-92b2-4dc3d94b292e
range(1,10)

# ╔═╡ 13e3b758-f1bc-4320-b1f0-d6d10742ba92
md"""
-- 사용예시1
"""

# ╔═╡ 64c7ab90-36f9-4730-86cd-1568b6dcc42d
collect(1:10) # 벡터화

# ╔═╡ 6ed6a63d-f24b-45d7-a248-b3831fd2a256
Array(1:10)

# ╔═╡ 0022e333-c010-436d-805d-38969be2278f
md"""
-- 사용예시2
"""

# ╔═╡ ba99ec8e-86fd-46b7-ba51-400435c630e9
collect(1 : 2.5 : 10)

# ╔═╡ 75607853-6e18-4d0f-aaa9-f2b3dfde177e
Array(1 : 2.5 : 10)

# ╔═╡ df4d33bf-5c35-4dd8-90e2-eaf89734e238
md"""
-- 사용예시3
"""

# ╔═╡ 51d5aad7-ce5b-45d4-8c5c-45f2ff67c24f
collect(1:1)

# ╔═╡ 9cedb314-3fa9-46ea-8efa-2dd2be86bc44
Array(1:1)

# ╔═╡ 8c66ea34-3e7f-4873-b205-5a996f489956
md"""
-- 사용예시3
"""

# ╔═╡ 14a8d039-acf6-4ab4-8973-f4aa2e06d4b7
collect((1:10)/10)

# ╔═╡ dfb68030-b469-485d-b130-32c2ab25d06d
Array((1:10)/10)

# ╔═╡ a9b0cc2f-97f1-4d73-8a0b-b61e66cfecfb
md"""
-- 사용예시4: 넘파이의 `linspace`와 같은 기능
"""

# ╔═╡ 6d87578e-af1d-48c4-93f6-62a496284141
collect(range(1,10,length=8))

# ╔═╡ 0be39055-4967-4ae7-8dc3-ca49e850a870
Array(range(1,10,length=8))

# ╔═╡ dd65b501-cc5f-42ea-8b39-c8d4f2f7a66b
md"""
### `[]`: 빈 vector 생성
"""

# ╔═╡ 50751ce5-b086-4735-b100-407905586605
[]

# ╔═╡ 094de25d-d6b1-4d1f-af86-4d6be3e3df62
md"""
### `+`: 덧셈 
"""

# ╔═╡ 4f43452b-2b63-4a88-a0fe-30364c6dce7d
md"""
#### `-` 길이가 같은 벡터끼리 덧셈
"""

# ╔═╡ b6038300-26b7-47a4-9154-54fd7e8bd798
[1,2] + [11,22]

# ╔═╡ d8bf7798-a44e-451f-88c5-fbaa64677c8d
md"""
#### `-` 상수를 더하기 (브로드캐스팅)
"""

# ╔═╡ 397fdbcf-6544-449e-a7e5-870f5a1f1fa1
# [1,2] + 1 # 불가능

# ╔═╡ 0060aac5-902c-4de6-b042-4137988c014c
[1,2] .+ 1 # 가능

# ╔═╡ ca86b7bb-931f-414f-a319-52404b708d28
md"""
### `*`: 곱셈
"""

# ╔═╡ 110076c8-7692-4e79-809e-2b0625580f62
md"""
#### 스칼라 * 벡터: 그냥 브로캐스팅 가능
"""

# ╔═╡ ae5f5111-77b3-4d40-b1cf-c564a41bc613
[1,2] * 2 # 가능

# ╔═╡ e7699521-19c1-4b40-8391-63ec4e5bf0da
[1,2] .* 2 # 가능

# ╔═╡ 6d94b424-9207-48ee-8720-58c6f42b4629
md"""
#### 하다마르곱
"""

# ╔═╡ 46e75e5a-212a-4e1c-b512-697e6089ca02
[1,2].*[3,4] # 가능

# ╔═╡ a3bc72cd-be63-4d02-aaa3-9fe89b8d14ad
# [1,2]*[3,4] # 불가능

# ╔═╡ f747c4da-9d56-4c3f-a3b3-bd7293fa119f
md"""
### `^2`: 제곱연산
"""

# ╔═╡ ae511f6b-fdf1-4740-9dc2-3914882b64d2
[1,2,3].^2 + [1,2,3].^2 

# ╔═╡ a14bbd87-e458-495f-88a6-9f848b3337b7
md"""
### `reshape`: 차원변경
"""

# ╔═╡ c37bf4ee-9582-46fb-b4f3-2e899ebc4c98
md"""
-- 벡터를 매트릭스로!
"""

# ╔═╡ 90b31583-cd9c-433e-a4f6-d2998d5bdd59
reshape([1,2,3,4],(2,2)) 

# ╔═╡ 53ae3e8c-1c9d-436c-8f41-73031fe2a6e6
md"""
-- 벡터를 다차원 array로
"""

# ╔═╡ 65ad88f2-6548-4d97-a783-3b5f7624dfe1
reshape([1,2,3,4,4,3,2,1],(2,2,2))

# ╔═╡ 50bd2696-2bef-489a-b20f-3d17134d6c60
md"""
-- 각 원소에 reshape 적용하기
"""

# ╔═╡ 696a3af4-e19a-424b-98a7-18d233633430
let 
	f(x)=reshape(x,(2,2))
	f.(([1,2,3,4],[1,2,3,4]))
end

# ╔═╡ eb78dad4-ccdd-4dd7-9fb5-af4e49aa41c0
md"""
### 조건에 맞는 원소 출력
"""

# ╔═╡ e34720c1-0ff8-4bce-aa7c-c07876a4353d
md"""
-- R에서의 `c()`, Python 에서의 `np.array`와 유사하다.
"""

# ╔═╡ f671da86-694c-4978-8d78-6b47dbf754ef
let
	arr = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
	arr[arr.<40]
end

# ╔═╡ d7346eb9-58b3-4d78-8173-bf31fd3c3b3f
md"""
-- 참고로 아래는 동작하지 않음
"""

# ╔═╡ f14d0d78-57ed-4444-9e35-0144b070aab5
# let
# 	arr = (10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
# 	arr[arr.<40]
# end

# ╔═╡ 07fcf161-354f-4b12-8638-71a91705dd97
md"""
### `cat` -- 결합 ($\star$)
"""

# ╔═╡ 598d0d0c-5813-470e-9d82-45234e6e0448
md"""
-- (n,1) `cat` (1,) --> (n+1,1)
"""

# ╔═╡ 28e86392-85de-40e7-bc52-211f9b48fa8f
let 
	a = [1,2,3]
	b = 4
	cat(a,b,dims=1)
end

# ╔═╡ e3f6dc9b-2923-4ebb-9f11-8dfd4cdb0ef9
md"""
-- (n,1) `cat` (m,1) --> (n+m,1)
"""

# ╔═╡ ce707b0f-ca1c-4470-9710-2102b6dc9d75
let 
	a = [1,2,3]
	b = [-1,-2,-3,-4]
	cat(a,b,dims=1)
end

# ╔═╡ d8f01bf7-cad8-48f3-b1ba-c5e89f6c49ce
md"""
-- (n,1) `cat` (n,1) --> (n,2)
"""

# ╔═╡ 4f297ce5-aa38-40f2-9ace-75a1b51d71ca
let
	a = [1,2,3]
	b = -1*a
	cat(a,b,dims=2)
end

# ╔═╡ 6adfe369-0e5c-412a-9c82-d2b2786d4421
md"""
-- (n,1) `cat` (n,1) --> (n,1,2)
"""

# ╔═╡ 9688e3a7-98ab-4279-bf50-e4fd0caaffcb
let
	a = [1,2,3] 
	b = -1*a
	cat(a,b,dims=3)
end

# ╔═╡ ba244bf4-1e9f-47a5-9415-46482fc278c0
md"""
### `vcat` -- 위아래로 결합
"""

# ╔═╡ 597ac852-e2b5-4b58-9f62-4c10baa497c0
let 
	a= [1,2,3]
	b= [4,5]
	c= [5,6,7]
	vcat(a,b,c) # rbind
end

# ╔═╡ 8704878f-8231-446e-801e-ab6b94f1473e
md"""
### `hcat` -- 좌우로 결합
"""

# ╔═╡ c8158126-5ddd-40e3-b9c7-b24441e410bc
let 
	a= [1,2,3]
	b= [4,5,6]
	c= -a
	hcat(a,b,c) # cbind
end

# ╔═╡ 20b0ee2c-e948-4a53-bd9e-bd5780d7d390
collect((1:1)*1)

# ╔═╡ 4fc2928c-6490-46e2-bba4-754c7f3d9020
md"""
### `[? \n ?]` -- 위아래로 결합
"""

# ╔═╡ 29c312db-2b41-4e37-8b12-de972b87db69
let 
	a= [1,2,3]
	b= [4,5] 
	[
		a
		b
	]
end

# ╔═╡ dc23d25a-a29f-4847-88a0-290daab499ae
let 
	a= [1,2,3]
	b= [4,5] 
	[a; b] 
end

# ╔═╡ c38f5da6-878d-4bdf-b44b-78a77e9d2065
md"""
### `[? ?]` -- 좌우로 결합
"""

# ╔═╡ 4676c0ee-0b09-426e-88ca-e77def8f3438
let
	a= [1,2,3]
	b= [3,4,5]
	[a b]
end

# ╔═╡ 73018817-f7a3-4b84-a956-a289c1fd76a4
let
	a= [1,2,3]
	b= [3,4,5]
	[a ;; b]
end

# ╔═╡ 426a7d5f-00e3-49ed-bd51-d7cf984f98fc
md"""
### `append!` -- 벡터의 추가
"""

# ╔═╡ 1edb7515-0571-40ba-9b35-d84f623ce7d1
md"""
-- 정석적인 사용
"""

# ╔═╡ b4c01c19-0d04-4be8-b85a-dcab9a2c8dd6
let 
	a= [1,2,3]
	b= [4]
	append!(a,b) 
	a
end

# ╔═╡ 5f0e70c9-40f5-4f2b-81fd-c92e0a14d03e
md"""
-- 이렇게 사용해도 가능하긴 함
"""

# ╔═╡ 7a5aaf7e-7892-4b16-9b5c-03edcb889b2b
let 
	a= [1,2,3]
	b= 4 
	append!(a,b) # push!가 더 올바른 사용인듯
	a
end

# ╔═╡ 2dd57eea-731f-4a4d-908a-2419c87fc48f
md"""
### `push!` -- 원소추가
"""

# ╔═╡ 3cbac8cc-5214-42b5-9e81-26a30e97e712
let 
	a= [1,2,3]
	push!(a,4)
	a
end

# ╔═╡ 8fb3dc47-b7a0-42f2-8a60-e41dffe144de
let 
	a= [1,2,3]
	push!(a,4,5,6)
	a
end

# ╔═╡ 8820930d-2e87-4337-aa69-c149e9404fda
md"""
### `⋅` -- 내적
"""

# ╔═╡ ec04a6d4-bd2a-439f-91d7-88236bd32fe0
[1,2,3] ⋅ [1,2,3] # LinearAlgebra를 import 해야 사용가능

# ╔═╡ 53116524-6f30-44f3-b2c9-d74cfd063cef
dot([1,2,3], [1,2,3]) # LinearAlgebra를 import 해야 사용가능

# ╔═╡ fe41e9bc-f36e-429a-9be2-46c3cdd1f443
[1,2,3]'*[1,2,3]

# ╔═╡ ce02bd5c-395d-4776-b429-4f488018e323
md"""
## Matrix{Int64} // Array{Int64, 2}
"""

# ╔═╡ 5d8d5c85-c7c0-491f-84a6-86e7c2d1f54c
md"""
### 선언
"""

# ╔═╡ 3caaa9a6-6c20-4c64-a966-2695860de97c
md"""
#### -- matrix 선언
"""

# ╔═╡ 452c7dae-59d6-4382-9566-68456d4ff78b
[
	1 2 3
	2 3 4
	5 6 7
]

# ╔═╡ c4a7b600-f494-426c-8451-933348ab085e
[1 2 3; 2 3 4; 5 6 7]

# ╔═╡ e5f8320d-448f-4457-8bd9-de5b9323323d
Float64[1 2 3; 2 3 4; 5 6 7]

# ╔═╡ 40976bf5-6999-4294-bf1a-4e96c57fb61f
reshape(1:6,(3,2))

# ╔═╡ f9113777-0ad2-454b-961e-1db0bafc1876
md"""
#### -- col-vector 선언
"""

# ╔═╡ 89cda2f3-8a8b-4ee6-9e85-df5e7582eba9
[
	1
	2
	3
]

# ╔═╡ 94a038ed-53eb-4e21-940b-616ef6005c42
[1,2,3]

# ╔═╡ 157b5d27-338e-49d9-9a46-40caf0086217
[1;2;3]

# ╔═╡ c14a787d-9ed2-4a1f-80fc-11ec6864979a
md"""
#### -- row-vector 선언
"""

# ╔═╡ 2f684f76-e84f-44a1-8952-a85b01a717d9
[1 2 3]

# ╔═╡ 61411de4-b45f-45d2-88b9-defa81b9529d
[1 ;; 2 ;; 3]

# ╔═╡ df50cd6c-9f92-42ab-9aa7-4c7f871fe632
md"""
### 자료형
"""

# ╔═╡ bb9955ac-e0df-4f08-825b-f51be3c70f4a
typeof([1 2 ; 4 5])

# ╔═╡ 507ecb5d-cdb7-495d-a52e-ed5695b49962
md"""
### 인덱싱
"""

# ╔═╡ 7e775c7e-e4c5-471b-8a2f-665dc9a36b2a
md"""
-- 예시1: 모든원소
"""

# ╔═╡ 9ab6be18-5f09-4852-9ddb-08126aa78fe4
let 
	A = reshape(1:25,(5,5))
	A[:,:]
end

# ╔═╡ c5ae2d06-f0f3-4f3b-af9c-eed559f657f0
md"""
-- 예시2: $(i,j)$-th 
"""

# ╔═╡ 5026241a-32ea-40f1-9fcb-9aec8c7554d8
let 
	A = reshape(1:25,(5,5))
	A[5,5]
end

# ╔═╡ 9ddc7d2e-2f55-4d51-b7a5-a068969d813f
md"""
-- 예시3: first row
"""

# ╔═╡ 1bc64311-f18f-4a7c-b82f-e03a9389a645
let 
	A = reshape(1:25,(5,5))
	A[1,:]
end

# ╔═╡ cd79d08d-03a1-458b-b736-d2fc8b3c6206
md"""
-- 예시4: first column (1)
"""

# ╔═╡ e9ce5391-1031-4834-908c-0872bcb5b78c
let 
	A = reshape(1:25,(5,5))
	A[:,1]
end

# ╔═╡ 7170fa0d-f9f7-45c8-bbc9-6d59cba5979f
md"""
-- 예시5: first column (2)
"""

# ╔═╡ b00b8150-8409-4aa4-9b38-51be865da9e4
let 
	A = reshape(1:25,(5,5))
	A[1:5,[1]]
end

# ╔═╡ 727bb1b5-f178-4f1e-9e85-a24d8070ec4c
md"""
-- 예시6: 1,3,5 columns
"""

# ╔═╡ 4026d756-9a60-415a-acff-fb13719f61a7
let 
	A = reshape(1:25,(5,5))
	A[1:2:5,:]
end

# ╔═╡ 39990bea-ac81-4dde-aac9-b713eb48ecb6
md"""
-- 예시7: bool (last row)
"""

# ╔═╡ 6f38a35e-524c-40ab-8f0f-e6910e16e1ff
let 
	A = reshape(1:25,(5,5))
	A[[false,false,false,false,true],:]
end

# ╔═╡ 9bccd65f-51ee-44de-b7ce-3d6f6b358da9
md"""
### sum
"""

# ╔═╡ f84ef9c8-c5b5-4edc-8e36-a435142f483c
let 
	A = [1 2 3
 		 3 4 5]
	sum(A,dims=1)
	A |> sum(_,dims=1)
end

# ╔═╡ 1df9a273-7ddf-4d75-b5e5-ac7ff88bd411
let 
	A = reshape(1:25,(5,5))
	A[[false,false,false,false,true],:]
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.52"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "3e48676228c1009f50ec07ed3ee9194e7d94b55d"

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
# ╟─02f15a5f-c552-4651-804c-727439808aa6
# ╠═2df1ecc8-3690-470c-a295-178a19a7a57b
# ╠═b5d7d6fb-8d84-40de-be59-4fbed7a0bf37
# ╟─9106019b-8d46-4d4e-9c8d-ec471bf94148
# ╟─8a4515ef-43e6-4b14-b4e1-422da9a1481e
# ╟─d40778e9-a3bc-4b37-aa91-a2e2aee1bdf1
# ╠═926a79a0-529a-4d3f-a6bd-02a244f59439
# ╠═25101df4-57f0-469f-8b2b-6730fbc615f4
# ╠═73a99e81-75b1-4b22-a79e-0e5e276142c4
# ╟─958d83a5-0a55-4ecb-8c56-39d710567813
# ╠═7dfc8cf1-dc46-477a-90d7-762d852251a7
# ╠═948a0a3b-23f8-4549-a0ac-7d980c9deaec
# ╟─62494a20-408b-45e4-8838-22c3f082ec89
# ╟─715986c9-4d84-4ddb-9603-f547cd2f7615
# ╟─122d6d0b-40ed-40f8-9228-a3c0710695e4
# ╠═30e6f0ff-47f2-45e1-9fd4-a10a172270a7
# ╟─57c38d04-45b9-4299-9296-fb39d6e9323d
# ╠═d035611d-8eb4-4bec-93fe-33193bb65608
# ╟─ce4a324b-c8dc-4430-a77b-b74d7aee3822
# ╠═a97d0b1e-b809-41fa-910b-af2fee3aa45c
# ╠═8a807669-1413-4b1b-a631-f469b98265b3
# ╠═d937d933-372e-473a-a64e-10f2bd9d739b
# ╟─da5bea8f-f288-4586-87b1-1c16f386cb29
# ╠═8cec183e-0c79-4895-ab9e-1dfa11200865
# ╟─73033fab-330e-4852-a81e-9356b7656987
# ╠═9266930d-8688-46c7-9623-dc1bd19fe115
# ╟─66881f6b-da14-42c4-95ce-c3a98e8b29b2
# ╠═af0e4bad-b585-4fcb-9fc8-20c846950ca3
# ╠═5db159b9-89a5-442b-8dc7-90bf9bfd17e7
# ╟─99221e1e-9ca6-4fec-8505-7036acb8d883
# ╠═4116e7ee-2e59-404a-afe1-b1e8b33c5012
# ╠═d8d6d2ff-a421-487d-ae79-d170d56dc535
# ╠═d0537b56-15b8-46f4-a459-96e0e5ed781b
# ╟─d9ab08c9-4a3d-4acc-b51f-277c30f3d84d
# ╠═d4756b77-7c30-47a1-8469-1879247e62d4
# ╟─0845f68a-2020-45bf-b89d-b9d1c9a40940
# ╠═57afe948-3f7f-43d7-91bb-f8ffc28a6c1e
# ╟─c8322814-78d8-4463-b827-41cf36fe18b4
# ╠═d0d7e5cf-b886-4031-a996-6514173fb6b9
# ╠═acfc4cbf-7620-4faf-8331-24647aca8b04
# ╟─39c0a1c7-9261-40af-971e-2c1760c7f67c
# ╟─bcd32e50-bb86-4762-ad10-33ea633761e7
# ╠═cae3fb55-28fa-4bbf-aca1-85292eb4adac
# ╠═4a96b99d-f016-45a0-8420-e5e58610d1fb
# ╟─4219327a-23db-430c-af40-b060be4da7d3
# ╠═c8cfe9c6-3fa0-4d59-95bb-e02d120d2039
# ╟─7c556a96-5d30-4a2d-b81d-821f98eb6b70
# ╠═43f02e0e-1b7e-499a-a3b8-157478db3e23
# ╠═bb2da78f-8407-4e01-9c7c-a751952c404a
# ╠═cfad010c-b731-4bee-aa23-31db8d84e47a
# ╟─8b405945-57df-4acd-8513-f88a1f839747
# ╠═fb35b414-0352-4b7b-abe0-1a228e1b3a86
# ╠═ee18b1db-e9e9-4c0e-b2d2-d68b1b2c10fc
# ╟─256876fa-2c34-4490-b4c1-6c37218d2658
# ╟─7b4e7543-5a01-415b-83bc-cbfbb76d44e5
# ╠═88c4a706-73f2-43dd-9d66-7cc14a6a157e
# ╟─c99ad43a-7d99-4bc3-b8cf-c7b113df9ac2
# ╠═c53b6077-8806-4ab8-afdb-83628da7dc68
# ╠═963a99de-dbd0-42ad-ae94-b329bafc6574
# ╠═5846dfe1-b312-437d-b3da-0f5674b1fa5a
# ╠═14b3e1d3-3d54-435a-822c-ddb866f1ce8f
# ╟─56e70672-a2d0-4c22-9e03-421047bfd557
# ╟─b6dde50e-6854-4856-9754-942f2ab2ec74
# ╠═e89311b3-2217-4032-9e5f-d68ebf67f78b
# ╟─debddf9e-348b-4455-b9b6-d2a2f7c6313b
# ╠═00fb0699-3136-470d-a6af-f3efde8fa45b
# ╟─17ebce55-d32a-4d03-b939-7c04b165b25a
# ╠═e231d724-c735-4bfc-bd65-3c8fc7a071db
# ╟─16b3e4e3-a74c-403b-bc42-06836980d0fa
# ╠═66602223-7685-4e66-ad35-8a0221912a06
# ╟─a3770fc6-05b0-4d7e-b533-8450f7dcc8fe
# ╠═3f159028-5616-4130-95e7-171b12d91c49
# ╟─f4f96579-bc8e-495f-901c-3d1650f9f55a
# ╟─d3be5885-2dc4-41aa-af09-c930cdd122ec
# ╠═76631b58-b6b1-435b-82fb-f0cc21138cbe
# ╠═f2afa715-d817-4c7e-b68b-2a4719c37643
# ╠═fd218bdb-8fc7-4358-b7eb-c968a4642e3d
# ╠═93152114-cb4f-4b2b-ba3a-53208b93a3a6
# ╟─f361cefa-18ea-45f8-aab8-4b2a6f36fa59
# ╠═9fcfb75e-8ef7-4916-98c8-fb84f299c7db
# ╟─b24ababe-d63b-4901-8da9-1e89c42c8603
# ╠═ecd5ea13-1410-4966-b78d-0384385bf819
# ╟─34336ed2-2087-4567-898e-4911c1da4bba
# ╠═66763be8-c5c6-4120-bf49-bc2a350785d7
# ╟─2cb82f2f-a870-4f34-8599-a6b8a42a3f51
# ╠═5ef70562-3a73-42f0-a8d9-832903892f66
# ╟─a69c85e4-013e-41bf-8014-37ba098cc328
# ╠═5929d8b7-55e7-4032-b9eb-cf722739e426
# ╠═21200609-1ce3-437e-8b3e-66877fb3788b
# ╟─b98e7ded-79f4-4cdd-bf6a-c482ba60ac05
# ╠═0c374ae5-ce7a-4951-a1d5-3f864d531f4c
# ╠═5bf793da-d852-4366-a7d2-95ac4403d65a
# ╠═ce4c8f06-2761-4955-b5a6-9e928e91a255
# ╟─5e425985-9fa3-4596-bd1d-4c5e81f5ccce
# ╠═44f478bf-25d8-4f82-a5cc-e0e1f7833635
# ╠═f8bf2461-0806-4957-a6fd-20a738f49350
# ╟─43888dda-0dae-4835-820c-0f3576638162
# ╟─cf018dde-93d6-46e5-9d13-83a1472a9bdb
# ╠═5783921e-3218-4045-a0fb-b5220f832d6c
# ╠═d769087b-27ed-4079-92b2-4dc3d94b292e
# ╟─13e3b758-f1bc-4320-b1f0-d6d10742ba92
# ╠═64c7ab90-36f9-4730-86cd-1568b6dcc42d
# ╠═6ed6a63d-f24b-45d7-a248-b3831fd2a256
# ╟─0022e333-c010-436d-805d-38969be2278f
# ╠═ba99ec8e-86fd-46b7-ba51-400435c630e9
# ╠═75607853-6e18-4d0f-aaa9-f2b3dfde177e
# ╟─df4d33bf-5c35-4dd8-90e2-eaf89734e238
# ╠═51d5aad7-ce5b-45d4-8c5c-45f2ff67c24f
# ╠═9cedb314-3fa9-46ea-8efa-2dd2be86bc44
# ╟─8c66ea34-3e7f-4873-b205-5a996f489956
# ╠═14a8d039-acf6-4ab4-8973-f4aa2e06d4b7
# ╠═dfb68030-b469-485d-b130-32c2ab25d06d
# ╟─a9b0cc2f-97f1-4d73-8a0b-b61e66cfecfb
# ╠═6d87578e-af1d-48c4-93f6-62a496284141
# ╠═0be39055-4967-4ae7-8dc3-ca49e850a870
# ╟─dd65b501-cc5f-42ea-8b39-c8d4f2f7a66b
# ╠═50751ce5-b086-4735-b100-407905586605
# ╟─094de25d-d6b1-4d1f-af86-4d6be3e3df62
# ╟─4f43452b-2b63-4a88-a0fe-30364c6dce7d
# ╠═b6038300-26b7-47a4-9154-54fd7e8bd798
# ╟─d8bf7798-a44e-451f-88c5-fbaa64677c8d
# ╠═397fdbcf-6544-449e-a7e5-870f5a1f1fa1
# ╠═0060aac5-902c-4de6-b042-4137988c014c
# ╟─ca86b7bb-931f-414f-a319-52404b708d28
# ╟─110076c8-7692-4e79-809e-2b0625580f62
# ╠═ae5f5111-77b3-4d40-b1cf-c564a41bc613
# ╠═e7699521-19c1-4b40-8391-63ec4e5bf0da
# ╟─6d94b424-9207-48ee-8720-58c6f42b4629
# ╠═46e75e5a-212a-4e1c-b512-697e6089ca02
# ╠═a3bc72cd-be63-4d02-aaa3-9fe89b8d14ad
# ╟─f747c4da-9d56-4c3f-a3b3-bd7293fa119f
# ╠═ae511f6b-fdf1-4740-9dc2-3914882b64d2
# ╟─a14bbd87-e458-495f-88a6-9f848b3337b7
# ╟─c37bf4ee-9582-46fb-b4f3-2e899ebc4c98
# ╠═90b31583-cd9c-433e-a4f6-d2998d5bdd59
# ╟─53ae3e8c-1c9d-436c-8f41-73031fe2a6e6
# ╠═65ad88f2-6548-4d97-a783-3b5f7624dfe1
# ╟─50bd2696-2bef-489a-b20f-3d17134d6c60
# ╠═696a3af4-e19a-424b-98a7-18d233633430
# ╟─eb78dad4-ccdd-4dd7-9fb5-af4e49aa41c0
# ╟─e34720c1-0ff8-4bce-aa7c-c07876a4353d
# ╠═f671da86-694c-4978-8d78-6b47dbf754ef
# ╟─d7346eb9-58b3-4d78-8173-bf31fd3c3b3f
# ╠═f14d0d78-57ed-4444-9e35-0144b070aab5
# ╟─07fcf161-354f-4b12-8638-71a91705dd97
# ╟─598d0d0c-5813-470e-9d82-45234e6e0448
# ╠═28e86392-85de-40e7-bc52-211f9b48fa8f
# ╟─e3f6dc9b-2923-4ebb-9f11-8dfd4cdb0ef9
# ╟─ce707b0f-ca1c-4470-9710-2102b6dc9d75
# ╟─d8f01bf7-cad8-48f3-b1ba-c5e89f6c49ce
# ╠═4f297ce5-aa38-40f2-9ace-75a1b51d71ca
# ╟─6adfe369-0e5c-412a-9c82-d2b2786d4421
# ╠═9688e3a7-98ab-4279-bf50-e4fd0caaffcb
# ╟─ba244bf4-1e9f-47a5-9415-46482fc278c0
# ╠═597ac852-e2b5-4b58-9f62-4c10baa497c0
# ╟─8704878f-8231-446e-801e-ab6b94f1473e
# ╠═c8158126-5ddd-40e3-b9c7-b24441e410bc
# ╠═20b0ee2c-e948-4a53-bd9e-bd5780d7d390
# ╟─4fc2928c-6490-46e2-bba4-754c7f3d9020
# ╠═29c312db-2b41-4e37-8b12-de972b87db69
# ╠═dc23d25a-a29f-4847-88a0-290daab499ae
# ╟─c38f5da6-878d-4bdf-b44b-78a77e9d2065
# ╠═4676c0ee-0b09-426e-88ca-e77def8f3438
# ╠═73018817-f7a3-4b84-a956-a289c1fd76a4
# ╟─426a7d5f-00e3-49ed-bd51-d7cf984f98fc
# ╟─1edb7515-0571-40ba-9b35-d84f623ce7d1
# ╠═b4c01c19-0d04-4be8-b85a-dcab9a2c8dd6
# ╟─5f0e70c9-40f5-4f2b-81fd-c92e0a14d03e
# ╠═7a5aaf7e-7892-4b16-9b5c-03edcb889b2b
# ╟─2dd57eea-731f-4a4d-908a-2419c87fc48f
# ╠═3cbac8cc-5214-42b5-9e81-26a30e97e712
# ╠═8fb3dc47-b7a0-42f2-8a60-e41dffe144de
# ╟─8820930d-2e87-4337-aa69-c149e9404fda
# ╠═ec04a6d4-bd2a-439f-91d7-88236bd32fe0
# ╠═53116524-6f30-44f3-b2c9-d74cfd063cef
# ╠═fe41e9bc-f36e-429a-9be2-46c3cdd1f443
# ╟─ce02bd5c-395d-4776-b429-4f488018e323
# ╟─5d8d5c85-c7c0-491f-84a6-86e7c2d1f54c
# ╟─3caaa9a6-6c20-4c64-a966-2695860de97c
# ╠═452c7dae-59d6-4382-9566-68456d4ff78b
# ╠═c4a7b600-f494-426c-8451-933348ab085e
# ╠═e5f8320d-448f-4457-8bd9-de5b9323323d
# ╠═40976bf5-6999-4294-bf1a-4e96c57fb61f
# ╟─f9113777-0ad2-454b-961e-1db0bafc1876
# ╠═89cda2f3-8a8b-4ee6-9e85-df5e7582eba9
# ╠═94a038ed-53eb-4e21-940b-616ef6005c42
# ╠═157b5d27-338e-49d9-9a46-40caf0086217
# ╟─c14a787d-9ed2-4a1f-80fc-11ec6864979a
# ╠═2f684f76-e84f-44a1-8952-a85b01a717d9
# ╟─61411de4-b45f-45d2-88b9-defa81b9529d
# ╟─df50cd6c-9f92-42ab-9aa7-4c7f871fe632
# ╠═bb9955ac-e0df-4f08-825b-f51be3c70f4a
# ╟─507ecb5d-cdb7-495d-a52e-ed5695b49962
# ╟─7e775c7e-e4c5-471b-8a2f-665dc9a36b2a
# ╠═9ab6be18-5f09-4852-9ddb-08126aa78fe4
# ╟─c5ae2d06-f0f3-4f3b-af9c-eed559f657f0
# ╠═5026241a-32ea-40f1-9fcb-9aec8c7554d8
# ╟─9ddc7d2e-2f55-4d51-b7a5-a068969d813f
# ╠═1bc64311-f18f-4a7c-b82f-e03a9389a645
# ╟─cd79d08d-03a1-458b-b736-d2fc8b3c6206
# ╠═e9ce5391-1031-4834-908c-0872bcb5b78c
# ╟─7170fa0d-f9f7-45c8-bbc9-6d59cba5979f
# ╠═b00b8150-8409-4aa4-9b38-51be865da9e4
# ╟─727bb1b5-f178-4f1e-9e85-a24d8070ec4c
# ╠═4026d756-9a60-415a-acff-fb13719f61a7
# ╟─39990bea-ac81-4dde-aac9-b713eb48ecb6
# ╠═6f38a35e-524c-40ab-8f0f-e6910e16e1ff
# ╠═9bccd65f-51ee-44de-b7ce-3d6f6b358da9
# ╠═f84ef9c8-c5b5-4edc-8e36-a435142f483c
# ╠═1df9a273-7ddf-4d75-b5e5-ac7ff88bd411
# ╠═4cce08e2-2948-4628-a28a-3153d21baf53
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
