### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 2df1ecc8-3690-470c-a295-178a19a7a57b
using PlutoUI,LinearAlgebra

# ╔═╡ bafe974b-4678-49c6-bb0f-5d6943f40f62
using GLMakie

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
	sum(A,dims=1) # (2,3) -> (1,3)
end

# ╔═╡ 557f821c-b05c-4cfd-a9f8-7fd9e654b8c2
let 
	A = [1 2 3
 		 3 4 5]
	sum(A,dims=2) # (2,3) -> (2,1)
end

# ╔═╡ 9189959b-4324-4a79-afc1-d94efffdae1a
let 
	A = [1 2 3
 		 3 4 5]
	sum(A,dims=(1,2)) # (2,3) -> (1,1)
end

# ╔═╡ 522eb334-9d1f-4917-8fce-9e1a5b2d57bf
let 
	A = [1 2 3
 		 3 4 5]
	sum(A) # (2,3) -> (1,1)
end

# ╔═╡ 23bd4610-1052-488c-ba05-7b506a2c05a8
graphplot(complete_graph(10))

# ╔═╡ 5b475e9a-5a8e-4adf-a4a3-70d196695b6f


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
GLMakie = "e9467ef8-e4e7-5192-8a1a-b1aee30e663a"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
GLMakie = "~0.8.7"
PlutoUI = "~0.7.52"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "2f8583b4c6272aa9f2469a0079830ad0853ab8ce"

[[deps.AbstractFFTs]]
deps = ["ChainRulesCore", "LinearAlgebra"]
git-tree-sha1 = "cad4c758c0038eea30394b1b671526921ca85b21"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.4.0"

[[deps.AbstractLattices]]
git-tree-sha1 = "f35684b7349da49fcc8a9e520e30e45dbb077166"
uuid = "398f06c4-4d28-53ec-89ca-5b2656b7603d"
version = "0.2.1"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.AbstractTrees]]
git-tree-sha1 = "faa260e4cb5aba097a73fab382dd4b5819d8ec8c"
uuid = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
version = "0.4.4"

[[deps.Adapt]]
deps = ["LinearAlgebra", "Requires"]
git-tree-sha1 = "76289dc51920fdc6e0013c872ba9551d54961c24"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.6.2"

[[deps.Animations]]
deps = ["Colors"]
git-tree-sha1 = "e81c509d2c8e49592413bfb0bb3b08150056c79d"
uuid = "27a7e980-b3e6-11e9-2bcd-0b925532e340"
version = "0.4.1"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.ArrayInterface]]
deps = ["Adapt", "LinearAlgebra", "Requires", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "f83ec24f76d4c8f525099b2ac475fc098138ec31"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "7.4.11"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Automa]]
deps = ["ScanByte", "TranscodingStreams"]
git-tree-sha1 = "48e54446df62fdf9ef76959c32dc33f3cff659ee"
uuid = "67c07d97-cdcb-5c2c-af73-a7f9c32a568b"
version = "0.8.3"

[[deps.AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[deps.AxisArrays]]
deps = ["Dates", "IntervalSets", "IterTools", "RangeArrays"]
git-tree-sha1 = "16351be62963a67ac4083f748fdb3cca58bfd52f"
uuid = "39de3d68-74b9-583c-8d2d-e117c070f3a9"
version = "0.4.7"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.CEnum]]
git-tree-sha1 = "eb4cb44a499229b3b8426dcfb5dd85333951ff90"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.4.2"

[[deps.CRC32c]]
uuid = "8bf52ea8-c179-5cab-976a-9e18b702a9bc"

[[deps.CRlibm]]
deps = ["CRlibm_jll"]
git-tree-sha1 = "32abd86e3c2025db5172aa182b982debed519834"
uuid = "96374032-68de-5a5b-8d9e-752f78720389"
version = "1.0.1"

[[deps.CRlibm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e329286945d0cfc04456972ea732551869af1cfc"
uuid = "4e9b3aee-d8a1-5a3d-ad8b-7d824db253f0"
version = "1.0.1+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "e30f2f4e20f7f186dc36529910beaedc60cfa644"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.16.0"

[[deps.ChangesOfVariables]]
deps = ["InverseFunctions", "LinearAlgebra", "Test"]
git-tree-sha1 = "2fba81a302a7be671aefe194f0525ef231104e7f"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.8"

[[deps.ColorBrewer]]
deps = ["Colors", "JSON", "Test"]
git-tree-sha1 = "61c5334f33d91e570e1d0c3eb5465835242582c4"
uuid = "a2cac450-b92f-5266-8821-25eda20663c8"
version = "0.4.0"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "PrecompileTools", "Random"]
git-tree-sha1 = "dd3000d954d483c1aad05fe1eb9e6a715c97013e"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.22.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "600cc5508d66b78aae350f7accdb58763ac18589"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.10"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Combinatorics]]
git-tree-sha1 = "08c8b6831dc00bfea825826be0bc8336fc369860"
uuid = "861a8166-3701-5b0c-9a16-15d98fcdc6aa"
version = "1.0.2"

[[deps.CommonSubexpressions]]
deps = ["MacroTools", "Test"]
git-tree-sha1 = "7b8a93dba8af7e3b42fecabf646260105ac373f7"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.0"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "5ce999a19f4ca23ea484e92a1774a61b8ca4cf8e"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.8.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "fe2838a593b5f776e1597e086dcd47560d94e816"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.5.3"

[[deps.Contour]]
git-tree-sha1 = "d05d9e7b7aedff4e5b51a029dced05cfb6125781"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.2"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "cf25ccb972fec4e4817764d01c82386ae94f77b4"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.14"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelaunayTriangulation]]
deps = ["DataStructures", "EnumX", "ExactPredicates", "MakieCore", "Random", "SimpleGraphs"]
git-tree-sha1 = "a1d8532de83f8ce964235eff1edeff9581144d02"
uuid = "927a84f5-c5f4-47a5-9785-b46e178433df"
version = "0.7.2"

[[deps.DensityInterface]]
deps = ["InverseFunctions", "Test"]
git-tree-sha1 = "80c3e8639e3353e5d2912fb3a1916b8455e2494b"
uuid = "b429d917-457f-4dbc-8f4c-0cc954292b1d"
version = "0.4.0"

[[deps.DiffResults]]
deps = ["StaticArraysCore"]
git-tree-sha1 = "782dd5f4561f5d267313f23853baaaa4c52ea621"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.1.0"

[[deps.DiffRules]]
deps = ["IrrationalConstants", "LogExpFunctions", "NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "23163d55f885173722d1e4cf0f6110cdbaf7e272"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.15.1"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Distributions]]
deps = ["ChainRulesCore", "DensityInterface", "FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SparseArrays", "SpecialFunctions", "Statistics", "StatsAPI", "StatsBase", "StatsFuns", "Test"]
git-tree-sha1 = "e76a3281de2719d7c81ed62c6ea7057380c87b1d"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.98"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.DualNumbers]]
deps = ["Calculus", "NaNMath", "SpecialFunctions"]
git-tree-sha1 = "5837a837389fccf076445fce071c8ddaea35a566"
uuid = "fa6b7ba4-c1ee-5f82-b5fc-ecf0adba8f74"
version = "0.6.8"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e3290f2d49e661fbd94046d7e3726ffcb2d41053"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.4+0"

[[deps.EnumX]]
git-tree-sha1 = "bdb1942cd4c45e3c678fd11569d5cccd80976237"
uuid = "4e289a0a-7415-4d19-859d-a7e5c4648b56"
version = "1.0.4"

[[deps.ErrorfreeArithmetic]]
git-tree-sha1 = "d6863c556f1142a061532e79f611aa46be201686"
uuid = "90fa49ef-747e-5e6f-a989-263ba693cf1a"
version = "0.5.2"

[[deps.ExactPredicates]]
deps = ["IntervalArithmetic", "Random", "StaticArraysCore", "Test"]
git-tree-sha1 = "276e83bc8b21589b79303b9985c321024ffdf59c"
uuid = "429591f6-91af-11e9-00e2-59fbe8cec110"
version = "2.2.5"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "4558ab818dcceaab612d1bb8c19cee87eda2b83c"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.5.0+0"

[[deps.Extents]]
git-tree-sha1 = "5e1e4c53fa39afe63a7d356e30452249365fba99"
uuid = "411431e0-e8b7-467b-b5e0-f676ba4f2910"
version = "0.1.1"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Pkg", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "74faea50c1d007c85837327f6775bea60b5492dd"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.2+2"

[[deps.FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "b4fbdd20c889804969571cc589900803edda16b7"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.7.1"

[[deps.FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c6033cc3892d0ef5bb9cd29b7f2f0331ea5184ea"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.10+0"

[[deps.FastRounding]]
deps = ["ErrorfreeArithmetic", "LinearAlgebra"]
git-tree-sha1 = "6344aa18f654196be82e62816935225b3b9abe44"
uuid = "fa42c844-2597-5d31-933b-ebd51ab2693f"
version = "0.3.1"

[[deps.FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "299dc33549f68299137e51e6d49a13b5b1da9673"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.16.1"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FillArrays]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "Statistics"]
git-tree-sha1 = "f372472e8672b1d993e93dada09e23139b509f9e"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "1.5.0"

[[deps.FiniteDiff]]
deps = ["ArrayInterface", "LinearAlgebra", "Requires", "Setfield", "SparseArrays", "StaticArrays"]
git-tree-sha1 = "c6e4a1fbe73b31a3dea94b1da449503b8830c306"
uuid = "6a86dc24-6348-571c-b903-95158fe2bd41"
version = "2.21.1"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "LogExpFunctions", "NaNMath", "Preferences", "Printf", "Random", "SpecialFunctions", "StaticArrays"]
git-tree-sha1 = "00e252f4d706b3d55a8863432e742bf5717b498d"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "0.10.35"

[[deps.FreeType]]
deps = ["CEnum", "FreeType2_jll"]
git-tree-sha1 = "cabd77ab6a6fdff49bfd24af2ebe76e6e018a2b4"
uuid = "b38be410-82b0-50bf-ab77-7b57e271db43"
version = "4.0.0"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FreeTypeAbstraction]]
deps = ["ColorVectorSpace", "Colors", "FreeType", "GeometryBasics"]
git-tree-sha1 = "38a92e40157100e796690421e34a11c107205c86"
uuid = "663a7486-cb36-511b-a19d-713bb74d65c9"
version = "0.10.0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.GLFW]]
deps = ["GLFW_jll"]
git-tree-sha1 = "35dbc482f0967d8dceaa7ce007d16f9064072166"
uuid = "f7f18e0c-5ee9-5ccd-a5bf-e8befd85ed98"
version = "3.4.1"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "d972031d28c8c8d9d7b41a536ad7bb0c2579caca"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.8+0"

[[deps.GLMakie]]
deps = ["ColorTypes", "Colors", "FileIO", "FixedPointNumbers", "FreeTypeAbstraction", "GLFW", "GeometryBasics", "LinearAlgebra", "Makie", "Markdown", "MeshIO", "ModernGL", "Observables", "PrecompileTools", "Printf", "ShaderAbstractions", "StaticArrays"]
git-tree-sha1 = "7b8cd5699523079908fd19048828bd5442004ed9"
uuid = "e9467ef8-e4e7-5192-8a1a-b1aee30e663a"
version = "0.8.7"

[[deps.GPUArraysCore]]
deps = ["Adapt"]
git-tree-sha1 = "2d6ca471a6c7b536127afccfa7564b5b39227fe0"
uuid = "46192b85-c4d5-4398-a991-12ede77f4527"
version = "0.1.5"

[[deps.GeoInterface]]
deps = ["Extents"]
git-tree-sha1 = "bb198ff907228523f3dee1070ceee63b9359b6ab"
uuid = "cf35fbd7-0cd7-5166-be24-54bfbe79505f"
version = "1.3.1"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "Extents", "GeoInterface", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "424a5a6ce7c5d97cca7bcc4eac551b97294c54af"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.9"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "d3b3624125c1474292d0d8ed0f65554ac37ddb23"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.74.0+2"

[[deps.Graphics]]
deps = ["Colors", "LinearAlgebra", "NaNMath"]
git-tree-sha1 = "d61890399bc535850c4bf08e4e0d3a7ad0f21cbd"
uuid = "a2bd30eb-e257-5431-a919-1863eab51364"
version = "1.1.2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.GridLayoutBase]]
deps = ["GeometryBasics", "InteractiveUtils", "Observables"]
git-tree-sha1 = "678d136003ed5bceaab05cf64519e3f956ffa4ba"
uuid = "3955a311-db13-416c-9275-1d80ed98e5e9"
version = "0.9.1"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.HypergeometricFunctions]]
deps = ["DualNumbers", "LinearAlgebra", "OpenLibm_jll", "SpecialFunctions"]
git-tree-sha1 = "f218fe3736ddf977e0e772bc9a586b2383da2685"
uuid = "34004b35-14d8-5ef3-9330-4cdb6864b03a"
version = "0.3.23"

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

[[deps.ImageAxes]]
deps = ["AxisArrays", "ImageBase", "ImageCore", "Reexport", "SimpleTraits"]
git-tree-sha1 = "2e4520d67b0cef90865b3ef727594d2a58e0e1f8"
uuid = "2803e5a7-5153-5ecf-9a86-9b4c37f5f5ac"
version = "0.6.11"

[[deps.ImageBase]]
deps = ["ImageCore", "Reexport"]
git-tree-sha1 = "b51bb8cae22c66d0f6357e3bcb6363145ef20835"
uuid = "c817782e-172a-44cc-b673-b171935fbb9e"
version = "0.1.5"

[[deps.ImageCore]]
deps = ["AbstractFFTs", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Graphics", "MappedArrays", "MosaicViews", "OffsetArrays", "PaddedViews", "Reexport"]
git-tree-sha1 = "acf614720ef026d38400b3817614c45882d75500"
uuid = "a09fc81d-aa75-5fe9-8630-4744c3626534"
version = "0.9.4"

[[deps.ImageIO]]
deps = ["FileIO", "IndirectArrays", "JpegTurbo", "LazyModules", "Netpbm", "OpenEXR", "PNGFiles", "QOI", "Sixel", "TiffImages", "UUIDs"]
git-tree-sha1 = "bca20b2f5d00c4fbc192c3212da8fa79f4688009"
uuid = "82e4d734-157c-48bb-816b-45c225c6df19"
version = "0.6.7"

[[deps.ImageMetadata]]
deps = ["AxisArrays", "ImageAxes", "ImageBase", "ImageCore"]
git-tree-sha1 = "355e2b974f2e3212a75dfb60519de21361ad3cb7"
uuid = "bc367c6b-8a6b-528e-b4bd-a4b897500b49"
version = "0.9.9"

[[deps.Imath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "3d09a9f60edf77f8a4d99f9e015e8fbf9989605d"
uuid = "905a6f67-0a94-5f89-b386-d35d92009cd1"
version = "3.1.7+0"

[[deps.IndirectArrays]]
git-tree-sha1 = "012e604e1c7458645cb8b436f8fba789a51b257f"
uuid = "9b13fd28-a010-5f03-acff-a1bbcff69959"
version = "1.0.0"

[[deps.Inflate]]
git-tree-sha1 = "5cd07aab533df5170988219191dfad0519391428"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.3"

[[deps.IntegerMathUtils]]
git-tree-sha1 = "b8ffb903da9f7b8cf695a8bead8e01814aa24b30"
uuid = "18e54dd8-cb9d-406c-a71d-865a43cbb235"
version = "0.1.2"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0cb9352ef2e01574eeebdb102948a58740dcaf83"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2023.1.0+0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Interpolations]]
deps = ["Adapt", "AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "721ec2cf720536ad005cb38f50dbba7b02419a15"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.14.7"

[[deps.IntervalArithmetic]]
deps = ["CRlibm", "FastRounding", "LinearAlgebra", "Markdown", "Random", "RecipesBase", "RoundingEmulator", "SetRounding", "StaticArrays"]
git-tree-sha1 = "5ab7744289be503d76a944784bac3f2df7b809af"
uuid = "d1acc4aa-44c8-5952-acd4-ba5d80a2a253"
version = "0.20.9"

[[deps.IntervalSets]]
deps = ["Dates", "Random", "Statistics"]
git-tree-sha1 = "19ef25c6befb8076aefbc6f89d9011b415fb25da"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.7.5"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "eabe3125edba5c9c10b60a160b1779a000dc8b29"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.11"

[[deps.IrrationalConstants]]
git-tree-sha1 = "630b497eafcc20001bba38a4651b327dcfc491d2"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.2"

[[deps.Isoband]]
deps = ["isoband_jll"]
git-tree-sha1 = "f9b6d97355599074dc867318950adaa6f9946137"
uuid = "f1662d9f-8043-43de-a69a-05efc1cc6ff4"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "4ced6667f9974fc5c5943fa5e2ef1ca43ea9e450"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.8.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JpegTurbo]]
deps = ["CEnum", "FileIO", "ImageCore", "JpegTurbo_jll", "TOML"]
git-tree-sha1 = "327713faef2a3e5c80f96bf38d1fa26f7a6ae29e"
uuid = "b835a17e-a41a-41e7-81f0-2f016b05efe0"
version = "0.1.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6f2675ef130a300a112286de91973805fcc5ffbc"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.91+0"

[[deps.KernelDensity]]
deps = ["Distributions", "DocStringExtensions", "FFTW", "Interpolations", "StatsBase"]
git-tree-sha1 = "90442c50e202a5cdf21a7899c66b240fdef14035"
uuid = "5ab0869b-81aa-558d-bb23-cbf5423bbe9b"
version = "0.6.7"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LLVMOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f689897ccbe049adb19a065c495e75f372ecd42b"
uuid = "1d63c593-3942-5779-bab2-d838dc0a180e"
version = "15.0.4+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

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

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "6f73d1dd803986947b2c750138528a999a6c7733"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.6.0+0"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c7cb1f5d892775ba13767a87c7ada0b980ea0a71"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+2"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LightXML]]
deps = ["Libdl", "XML2_jll"]
git-tree-sha1 = "e129d9391168c677cd4800f5c0abb1ed8cb3794f"
uuid = "9c8b4983-aa76-5018-a973-4c85ecc9e179"
version = "0.9.0"

[[deps.LineSearches]]
deps = ["LinearAlgebra", "NLSolversBase", "NaNMath", "Parameters", "Printf"]
git-tree-sha1 = "7bbea35cec17305fc70a0e5b4641477dc0789d9d"
uuid = "d3d80556-e9d4-5f37-9878-2ab0fcc64255"
version = "7.2.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LinearAlgebraX]]
deps = ["LinearAlgebra", "Mods", "Permutations", "Primes", "SimplePolynomials"]
git-tree-sha1 = "558a338f1eeabe933f9c2d4052aa7c2c707c3d52"
uuid = "9b3f67b0-2d00-526e-9884-9e4938f8fb88"
version = "0.1.12"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "c3ce8e7420b3a6e071e0fe4745f5d4300e37b13f"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.24"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "Pkg"]
git-tree-sha1 = "154d7aaa82d24db6d8f7e4ffcfe596f40bff214b"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2023.1.0+0"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Makie]]
deps = ["Animations", "Base64", "ColorBrewer", "ColorSchemes", "ColorTypes", "Colors", "Contour", "DelaunayTriangulation", "Distributions", "DocStringExtensions", "Downloads", "FFMPEG", "FileIO", "FixedPointNumbers", "Formatting", "FreeType", "FreeTypeAbstraction", "GeometryBasics", "GridLayoutBase", "ImageIO", "InteractiveUtils", "IntervalSets", "Isoband", "KernelDensity", "LaTeXStrings", "LinearAlgebra", "MacroTools", "MakieCore", "Markdown", "Match", "MathTeXEngine", "Observables", "OffsetArrays", "Packing", "PlotUtils", "PolygonOps", "PrecompileTools", "Printf", "REPL", "Random", "RelocatableFolders", "Setfield", "ShaderAbstractions", "Showoff", "SignedDistanceFields", "SparseArrays", "StableHashTraits", "Statistics", "StatsBase", "StatsFuns", "StructArrays", "TriplotBase", "UnicodeFun"]
git-tree-sha1 = "729640354756782c89adba8857085a69e19be7ab"
uuid = "ee78f7c6-11fb-53f2-987a-cfe4a2b5a57a"
version = "0.19.7"

[[deps.MakieCore]]
deps = ["Observables"]
git-tree-sha1 = "87a85ff81583bd392642869557cb633532989517"
uuid = "20f20a25-4f0e-4fdf-b5d1-57303727442b"
version = "0.6.4"

[[deps.MappedArrays]]
git-tree-sha1 = "2dab0221fe2b0f2cb6754eaa743cc266339f527e"
uuid = "dbb5928d-eab1-5f90-85c2-b9b0edb7c900"
version = "0.4.2"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Match]]
git-tree-sha1 = "1d9bc5c1a6e7ee24effb93f175c9342f9154d97f"
uuid = "7eb4fadd-790c-5f42-8a69-bfa0b872bfbf"
version = "1.2.0"

[[deps.MathTeXEngine]]
deps = ["AbstractTrees", "Automa", "DataStructures", "FreeTypeAbstraction", "GeometryBasics", "LaTeXStrings", "REPL", "RelocatableFolders", "Test", "UnicodeFun"]
git-tree-sha1 = "8f52dbaa1351ce4cb847d95568cb29e62a307d93"
uuid = "0a4f8689-d25c-4efe-a92b-7142dfc1aa53"
version = "0.5.6"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.MeshIO]]
deps = ["ColorTypes", "FileIO", "GeometryBasics", "Printf"]
git-tree-sha1 = "8be09d84a2d597c7c0c34d7d604c039c9763e48c"
uuid = "7269a6da-0436-5bbc-96c2-40638cbb6118"
version = "0.4.10"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.ModernGL]]
deps = ["Libdl"]
git-tree-sha1 = "b76ea40b5c0f45790ae09492712dd326208c28b2"
uuid = "66fc600b-dfda-50eb-8b99-91cfa97b1301"
version = "1.1.7"

[[deps.Mods]]
git-tree-sha1 = "61be59e4daffff43a8cec04b5e0dc773cbb5db3a"
uuid = "7475f97c-0381-53b1-977b-4c60186c8d62"
version = "1.3.3"

[[deps.MosaicViews]]
deps = ["MappedArrays", "OffsetArrays", "PaddedViews", "StackViews"]
git-tree-sha1 = "7b86a5d4d70a9f5cdf2dacb3cbe6d251d1a61dbe"
uuid = "e94cdb99-869f-56ef-bcf0-1ae2bcbe0389"
version = "0.3.4"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.Multisets]]
git-tree-sha1 = "8d852646862c96e226367ad10c8af56099b4047e"
uuid = "3b2b4ff1-bcff-5658-a3ee-dbcf1ce5ac09"
version = "0.4.4"

[[deps.MutableArithmetics]]
deps = ["LinearAlgebra", "SparseArrays", "Test"]
git-tree-sha1 = "964cb1a7069723727025ae295408747a0b36a854"
uuid = "d8a4904e-b15c-11e9-3269-09a3773c0cb0"
version = "1.3.0"

[[deps.NLSolversBase]]
deps = ["DiffResults", "Distributed", "FiniteDiff", "ForwardDiff"]
git-tree-sha1 = "a0b464d183da839699f4c79e7606d9d186ec172c"
uuid = "d41bc354-129a-5804-8e4c-c37616107c6c"
version = "7.8.3"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "0877504529a3e5c3343c6f8b4c0381e57e4387e4"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.2"

[[deps.Netpbm]]
deps = ["FileIO", "ImageCore", "ImageMetadata"]
git-tree-sha1 = "d92b107dbb887293622df7697a2223f9f8176fcd"
uuid = "f09324ee-3d7c-5217-9330-fc30815ba969"
version = "1.1.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.Observables]]
git-tree-sha1 = "6862738f9796b3edc1c09d0890afce4eca9e7e93"
uuid = "510215fc-4207-5dde-b226-833fc4488ee2"
version = "0.5.4"

[[deps.OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "2ac17d29c523ce1cd38e27785a7d23024853a4bb"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.12.10"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

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
deps = ["Artifacts", "Imath_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "a4ca623df1ae99d09bc9868b008262d0c0ac1e4f"
uuid = "18a262bb-aa17-5467-a713-aee519bc75cb"
version = "3.1.4+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "1aa4b74f80b01c6bc2b89992b861b5f210e665b5"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.21+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Optim]]
deps = ["Compat", "FillArrays", "ForwardDiff", "LineSearches", "LinearAlgebra", "NLSolversBase", "NaNMath", "Parameters", "PositiveFactorizations", "Printf", "SparseArrays", "StatsBase"]
git-tree-sha1 = "e3a6546c1577bfd701771b477b794a52949e7594"
uuid = "429524aa-4258-5aef-a3af-852621145aeb"
version = "1.7.6"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.40.0+0"

[[deps.PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "67eae2738d63117a196f497d7db789821bce61d1"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.17"

[[deps.PNGFiles]]
deps = ["Base64", "CEnum", "ImageCore", "IndirectArrays", "OffsetArrays", "libpng_jll"]
git-tree-sha1 = "9b02b27ac477cad98114584ff964e3052f656a0f"
uuid = "f57f5aa1-a3ce-4bc8-8ab9-96f992907883"
version = "0.4.0"

[[deps.Packing]]
deps = ["GeometryBasics"]
git-tree-sha1 = "ec3edfe723df33528e085e632414499f26650501"
uuid = "19eb6ba3-879d-56ad-ad62-d5c202156566"
version = "0.5.0"

[[deps.PaddedViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "0fac6313486baae819364c52b4f483450a9d793f"
uuid = "5432bcbf-9aad-5242-b902-cca2824c8663"
version = "0.5.12"

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "4b2e829ee66d4218e0cef22c0a64ee37cf258c29"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.1"

[[deps.Permutations]]
deps = ["Combinatorics", "LinearAlgebra", "Random"]
git-tree-sha1 = "6e6cab1c54ae2382bcc48866b91cf949cea703a1"
uuid = "2ae35dd2-176d-5d53-8349-f30d82d94d4f"
version = "0.4.16"

[[deps.Pixman_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "LLVMOpenMP_jll", "Libdl"]
git-tree-sha1 = "64779bc4c9784fee475689a1752ef4d5747c5e87"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.42.2+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PkgVersion]]
deps = ["Pkg"]
git-tree-sha1 = "f6cf8e7944e50901594838951729a1861e668cb8"
uuid = "eebad327-c553-4316-9ea0-9fa01ccd7688"
version = "0.3.2"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "PrecompileTools", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "f92e1315dadf8c46561fb9396e525f7200cdc227"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.3.5"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e47cd150dbe0443c3a3651bc5b9cbd5576ab75b7"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.52"

[[deps.PolygonOps]]
git-tree-sha1 = "77b3d3605fc1cd0b42d95eba87dfcd2bf67d5ff6"
uuid = "647866c9-e3ac-4575-94e7-e3d426903924"
version = "0.1.2"

[[deps.Polynomials]]
deps = ["ChainRulesCore", "LinearAlgebra", "MakieCore", "MutableArithmetics", "RecipesBase"]
git-tree-sha1 = "3aa2bb4982e575acd7583f01531f241af077b163"
uuid = "f27b6e38-b328-58d1-80ce-0feddd5e7a45"
version = "3.2.13"

[[deps.PositiveFactorizations]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "17275485f373e6673f7e7f97051f703ed5b15b20"
uuid = "85a6dd25-e78a-55b7-8502-1745935b8125"
version = "0.2.4"

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

[[deps.Primes]]
deps = ["IntegerMathUtils"]
git-tree-sha1 = "4c9f306e5d6603ae203c2000dd460d81a5251489"
uuid = "27ebfcd6-29c5-5fa9-bf4b-fb8fc14df3ae"
version = "0.5.4"

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

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "6ec7ac8412e83d57e313393220879ede1740f9ee"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.8.2"

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
git-tree-sha1 = "1342a47bf3260ee108163042310d26f2be5ec90b"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.5"

[[deps.RecipesBase]]
deps = ["PrecompileTools"]
git-tree-sha1 = "5c3d09cc4f31f5fc6af001c250bf1278733100ff"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.4"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "90bc7a7c96410424509e4263e277e43250c05691"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.RingLists]]
deps = ["Random"]
git-tree-sha1 = "9712ebc42e91850f35272b48eb840e60c0270ec0"
uuid = "286e9d63-9694-5540-9e3c-4e6708fa07b2"
version = "0.2.7"

[[deps.Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "f65dcb5fa46aee0cf9ed6274ccbd597adc49aa7b"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.7.1"

[[deps.Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6ed52fdd3382cf21947b15e8870ac0ddbff736da"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.4.0+0"

[[deps.RoundingEmulator]]
git-tree-sha1 = "40b9edad2e5287e05bd413a38f61a8ff55b9557b"
uuid = "5eaf0fd0-dfba-4ccb-bf02-d820a40db705"
version = "0.2.1"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SIMD]]
deps = ["PrecompileTools"]
git-tree-sha1 = "0e270732477b9e551d884e6b07e23bb2ec947790"
uuid = "fdea26ae-647d-5447-a871-4b548cad5224"
version = "3.4.5"

[[deps.ScanByte]]
deps = ["Libdl", "SIMD"]
git-tree-sha1 = "d49e35f413186528f1d7cc675e67d0ed16fd7800"
uuid = "7b38b023-a4d7-4c5e-8d43-3f3097f304eb"
version = "0.4.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "30449ee12237627992a99d5e30ae63e4d78cd24a"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.2.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SetRounding]]
git-tree-sha1 = "d7a25e439d07a17b7cdf97eecee504c50fedf5f6"
uuid = "3cc68bcd-71a2-5612-b932-767ffbe40ab0"
version = "0.2.1"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.ShaderAbstractions]]
deps = ["ColorTypes", "FixedPointNumbers", "GeometryBasics", "LinearAlgebra", "Observables", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "0d15c3e7b2003f4451714f08ffec2b77badc2dc4"
uuid = "65257c39-d410-5151-9873-9b3e5be5013e"
version = "0.3.0"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SignedDistanceFields]]
deps = ["Random", "Statistics", "Test"]
git-tree-sha1 = "d263a08ec505853a5ff1c1ebde2070419e3f28e9"
uuid = "73760f76-fbc4-59ce-8f25-708e95d2df96"
version = "0.4.0"

[[deps.SimpleGraphs]]
deps = ["AbstractLattices", "Combinatorics", "DataStructures", "IterTools", "LightXML", "LinearAlgebra", "LinearAlgebraX", "Optim", "Primes", "Random", "RingLists", "SimplePartitions", "SimplePolynomials", "SimpleRandom", "SparseArrays", "Statistics"]
git-tree-sha1 = "b608903049d11cc557c45e03b3a53e9260579c19"
uuid = "55797a34-41de-5266-9ec1-32ac4eb504d3"
version = "0.8.4"

[[deps.SimplePartitions]]
deps = ["AbstractLattices", "DataStructures", "Permutations"]
git-tree-sha1 = "dcc02923a53f316ab97da8ef3136e80b4543dbf1"
uuid = "ec83eff0-a5b5-5643-ae32-5cbf6eedec9d"
version = "0.3.0"

[[deps.SimplePolynomials]]
deps = ["Mods", "Multisets", "Polynomials", "Primes"]
git-tree-sha1 = "d073c45302132b324ca653e1053966b4beacc2a5"
uuid = "cc47b68c-3164-5771-a705-2bc0097375a0"
version = "0.2.11"

[[deps.SimpleRandom]]
deps = ["Distributions", "LinearAlgebra", "Random"]
git-tree-sha1 = "3a6fb395e37afab81aeea85bae48a4db5cd7244a"
uuid = "a6525b86-64cd-54fa-8f65-62fc48bdc0e8"
version = "0.3.1"

[[deps.SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[deps.Sixel]]
deps = ["Dates", "FileIO", "ImageCore", "IndirectArrays", "OffsetArrays", "REPL", "libsixel_jll"]
git-tree-sha1 = "2da10356e31327c7096832eb9cd86307a50b1eb6"
uuid = "45858cf5-a6b0-47a3-bbea-62219f50df47"
version = "0.1.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "c60ec5c62180f27efea3ba2908480f8055e17cee"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "7beb031cf8145577fbccacd94b8a8f4ce78428d3"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.3.0"

[[deps.StableHashTraits]]
deps = ["CRC32c", "Compat", "Dates", "SHA", "Tables", "TupleTools", "UUIDs"]
git-tree-sha1 = "0b8b801b8f03a329a4e86b44c5e8a7d7f4fe10a3"
uuid = "c5dd0088-6c3f-4803-b00e-f31a60c170fa"
version = "0.3.1"

[[deps.StackViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "46e589465204cd0c08b4bd97385e4fa79a0c770c"
uuid = "cae243ae-269e-4f55-b966-ac2d0dc13c15"
version = "0.1.1"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "StaticArraysCore", "Statistics"]
git-tree-sha1 = "9cabadf6e7cd2349b6cf49f1915ad2028d65e881"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.6.2"

[[deps.StaticArraysCore]]
git-tree-sha1 = "36b3d696ce6366023a0ea192b4cd442268995a0d"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.2"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "45a7769a04a3cf80da1c1c7c60caf932e6f4c9f7"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.6.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "75ebe04c5bed70b91614d684259b661c9e6274a4"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.34.0"

[[deps.StatsFuns]]
deps = ["ChainRulesCore", "HypergeometricFunctions", "InverseFunctions", "IrrationalConstants", "LogExpFunctions", "Reexport", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "f625d686d5a88bcd2b15cd81f18f98186fdc0c9a"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "1.3.0"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "GPUArraysCore", "StaticArraysCore", "Tables"]
git-tree-sha1 = "521a0e828e98bb69042fec1809c1b5a680eb7389"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.15"

[[deps.SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

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
git-tree-sha1 = "8621f5c499a8aa4aa970b1ae381aae0ef1576966"
uuid = "731e570b-9d59-4bfa-96dc-6df516fadf69"
version = "0.6.4"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "9a6ae7ed916312b41236fcef7e0af564ef934769"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.13"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.TriplotBase]]
git-tree-sha1 = "4d4ed7f294cda19382ff7de4c137d24d16adc89b"
uuid = "981d1d27-644d-49a2-9326-4793e63143c3"
version = "0.1.0"

[[deps.TupleTools]]
git-tree-sha1 = "3c712976c47707ff893cf6ba4354aa14db1d8938"
uuid = "9d95972d-f1c8-5527-a6e0-b4b365fa01f6"
version = "1.3.0"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "de67fa59e33ad156a590055375a30b23c40299d3"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.5"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "93c41695bc1c08c46c5899f4fe06d6ead504bb73"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.10.3+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "afead5aba5aa507ad5a3bf01f58f82c8d1403495"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.8.6+0"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6035850dcc70518ca32f012e46015b9beeda49d8"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.11+0"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "34d526d318358a859d7de23da945578e8e8727b7"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.4+0"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8fdda4c692503d44d04a0603d9ac0982054635f9"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.1+0"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "b4bfde5d5b652e22b9c790ad00af08b6d042b97d"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.15.0+0"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "e92a1a012a10506618f10b7047e478403a046c77"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.5.0+0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.isoband_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51b5eeb3f98367157a7a12a1fb0aa5328946c03c"
uuid = "9a68df92-36a6-505f-a73e-abb412b6bfb4"
version = "0.2.3+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3a2ea60308f0996d26f1e5354e10c24e9ef905d4"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.4.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

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

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"
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
# ╟─9bccd65f-51ee-44de-b7ce-3d6f6b358da9
# ╠═f84ef9c8-c5b5-4edc-8e36-a435142f483c
# ╠═557f821c-b05c-4cfd-a9f8-7fd9e654b8c2
# ╠═9189959b-4324-4a79-afc1-d94efffdae1a
# ╠═522eb334-9d1f-4917-8fce-9e1a5b2d57bf
# ╠═bafe974b-4678-49c6-bb0f-5d6943f40f62
# ╠═23bd4610-1052-488c-ba05-7b506a2c05a8
# ╠═5b475e9a-5a8e-4adf-a4a3-70d196695b6f
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
