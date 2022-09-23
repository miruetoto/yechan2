### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ fb981bbc-93b3-4d58-ae12-68374b3ff51d
using PlutoUI

# ╔═╡ 0bf00a57-45ca-4f06-89b8-93c997995c30
PlutoUI.TableOfContents()

# ╔═╡ 9c5d6224-1c4a-11ed-24aa-895284173cfa
md"""
# 자연과학대학 70주년 (홍보팀)
"""

# ╔═╡ 49ba5aff-6dd2-4179-9d86-f0071dd293ac
md"""
## 부탁의 말씀 
- 시안 수정사항은 가급적 카톡보다는 메일(guebin@jbnu.ac.kr)로 부탁드립니다. (카톡은 제가 놓치는 경우도 있습니다.)
- 시안은 pdf로 보내주시기 바랍니다. (pptx를 보낼경우 pdf도 함께 보내주시면 좋겠습니다.)
"""

# ╔═╡ 84504a4d-09d9-4149-a665-6369e9c52763
md"""
## Updates
9월19일
- From 신유정, 김대위: 시안 수신 
- From 김대위: 디자인컴펌
- From 김대위: 수량컨펌 -- 골든벨 (현수막2,배너2), 체육대회 (현수막2), 학생파티 (현수막2)
- From 김명훈: 대형현수막 시안 수신 + 최종컨펌
- From 디자인정원: 대중강연(신유정) 시안 수신
- From 김명훈: 초대장(팔플렛), 포스터1,2, 행사팜플렛, 기념식카드, 소형현수막, 봉투시안 수신 

"""

# ╔═╡ d73d2a79-fbfd-4056-a5f0-5833dea8cede
md"""

9월20일
- From 디자인정원: 대형현수막 시안 수신 (A,B 타입 두종류 수신)
- From 김명훈: 봉투시안 수신 + 수량컴펌 (수량: 행사팜플렛200 + 초대장100 = 총300)
- From 조경빈: 리서치페어 홍보물 수신 
- From 김명훈: 대형현수막 수정사항 수신 

"""

# ╔═╡ 8b7eba6f-255d-40c6-8058-0ab54f21b026
md"""

9월21일 
- From 신유정: 대중강연 홍보물 시안 및 수정사항 수신 
- From 디자인정원: 대형현수막 수정사항 수신 
- From 디자인정원: 리서치페어+대학원간담회 시안 수신 
- From 김명훈: 초대장 수정시안 
- From 디자인정원: 전체행사 (초대장,봉투,포스터01,소형현수막) 수신 
- From 디자인정원: 포스터02시안 관련 문의: "포스터 시안 작업하려는데 좌측이 포스터1, 우측이 포스터2 요청시안이에요. 보통 포스터 세로로 쓰는데, 요청시안이 가로라...포스터2를 가로로 사용하시는건지 확인 부탁드릴 수 있나요?" --> 김명훈교수님 답변요망 --> 답변완료 
- From 디자인정원: 대중강연 배너,팜플렛,포스터 수정시안 수신 
- From 디자인정원: 초대장 수정본 수신
- From 디자인정원: 이덕환, 이중원 교수님 고화질 사진요청 --> 김명훈 교수님 답변요망 
- From 신유정: 현수막, 팜플렛, 포스터, 배너 + 수량 확인사항수신 
- From 조경빈: 현수막, 리서치페어 
- From 김명훈: 대형현수막 수정본 수신 
- From 디자인정원: 전체행사 홍보물 수신 (1.팜플렛 + 봉투 2.기념식카드 3.포스터 4. 아래의 이슈사항 수신 // 김명훈교수님 이슈사항 확인해주세요)
1. 고해상도 이덕환, 이중원 교수 사진 
2. 초대장봉투 외에 팜플렛을 넣을 봉투도 필요한지? (필요하다면 봉투를 따로 제작해야함)
3. 기념식카드: 첨부이미지 뒤면에 들어간 3개의 이미지는 원본이 없음. 원본필요 + 홍난파-과학의 노래로 추정되는 이미지도 필요 (현재는 인터넷블로그에서 다운한 이미지라 추후 문제발생소지있음) 

"""

# ╔═╡ 328f854a-af2e-4c84-bf70-dd10e3fddf50
md"""

9월22일 
- To 디자인정원: 70주년 로고 고해상도 버전 전달 
- From 김명훈: 초대장 수정사항 수신 
- From 김명훈: 소형현수막 수정사항 수신 + 수량8개 
- From 김명훈: 포스터시안수신, QR은 추후 수정할 예정
- From 디자인정원: 대현현수막 수정사항 수신 
- From 디자인정원: 초대장 수정사항 수신 
- From 디자인정원: 기 수정사항과 유사한 내용들 일괄업데이트 여부 컨펌필요 (김명훈 교수님!) // ckeck 1,2,3,4 를 확인해야함 // [이해를 위한 예시](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8B%E1%85%B5%E1%84%92%E1%85%A2%E1%84%85%E1%85%B3%E1%86%AF%E1%84%8B%E1%85%B1%E1%84%92%E1%85%A1%E1%86%AB%E1%84%8B%E1%85%A8%E1%84%89%E1%85%B5.png): 좌측이 초대장의 수정내용인데, 같은 일정이 표로 들어가는 포스터에서도 '행사' 글씨를 지워야할지, 아니면 포스터는 그냥 두어도 되는지? 

1. [check1](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8E%E1%85%A6%E1%84%8F%E1%85%B31.jpeg)
2. [check2](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8E%E1%85%A6%E1%84%8F%E1%85%B32.jpeg)
3. [check3](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8E%E1%85%A6%E1%84%8F%E1%85%B33.jpeg)
4. [check4](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8E%E1%85%A6%E1%84%8F%E1%85%B34.jpeg)

- From 김명훈: check 확인

1. 대형현수막: 문제없음, 그대로 인쇄
2. 포스터1(세로형): QR 제외하고 대형현수막과 일치, 단 QR은 현재 생성중임.
3. 초대장: (1) 모시는 글에 주최자 이름 적혀있는 부분을 조금 (90%) 작게 // (2) 맨 뒷면 제목: '자연과학대학주간'이 아니라 '자연과학대학 과학주간'으로 수정바람. // (3) 그밖의 수정사항은 전체행사팜플렛과 가로형포스터에도 공통적용
4. 행사팜플렛: 세모표시된 것 모두 적용.

- From 디자인정원: 대중강연 수정사항 수신
- From 디자인정원: 리서치페어 수정사항 수신
- From 디자인정원: 전체행사 (팡플렛, 포스터, 소형현수막) 수정사항 수신
"""

# ╔═╡ e0e83565-d166-46a8-8c9f-a23f58c7b0ba
md"""
## 행사일정
"""

# ╔═╡ 23a2b6ee-3d29-4183-b59c-088eeb61360b
md"""
[행사일정표](https://github.com/miruetoto/yechan2/blob/main/fig1.png)
"""

# ╔═╡ 9f5fec8f-ce3d-4271-a586-f164761e2844
md"""
---
"""

# ╔═╡ aafc7e59-f80b-4967-9666-d6aec4044f63
md"""
## 행사별 홍보물작성계획
"""

# ╔═╡ ab2bdb35-ec0a-47ba-baff-ceb1c26912d6
md"""
|index|행사|현수막|팜플렛|포스터|배너|
|:-:|:-:|:-:|:-:|:-:|:-:|
|1|골든벨|2|0|0|2|
|2|체육대회|2|0|0|0|
|3|학생파티|2|0|0|0|
|4|체험부스|1|1|0|0|
|5|대중강연공통|0|1|학과당1개||
|6|대중강연1|2|0|0|2|
|7|대중강연2|2$\times$2|0|0|2$\times$2|
|8|리서치페어|2 (옥외)|0|학과당1개|0|
|9|대학원(외국인)간담회|1|0|0|0|
|10|기념식수|1|0|0|0|
|11|기념공연,기념식,기념강연공통|0|1|0|0|
|12|기념공연|0|0|0|0|
|13|기념식|1|0|0|1(장소안내)|
|14|기념강연|0|0|0|0|
|15|7문7답|2|1|0|1(장소안내)|
|16|온라인행사|0|0|학과당 1개|0|
|17|학생발표대회|2|0|0|0|
"""

# ╔═╡ 3d0d47d5-23f5-4725-8208-c017e4dd737e
md"""
---
"""

# ╔═╡ 23f16dfe-566e-446f-9676-015822b74c3e
md"""
### 1~2. 골든벨, 체육대회 (김대위/컨펌완료)
##### 현수막
- [시안: 전북대 $\to$ 디자인정원 (9/19)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%80%E1%85%A9%E1%86%AF%E1%84%83%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A6%E1%86%AF_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8.pdf)

##### 홍보배너 
- [시안: 전북대 $\to$ 디자인정원 (9/19)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%80%E1%85%A9%E1%86%AF%E1%84%83%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A6%E1%86%AF_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5.pdf)

|아이템|단가|수량|총액|비고|진행도|
|:-:|:-:|:-:|:-:|:-:|:-:|
|현수막1|50,000|2|100,000|골든벨|디자인/수량 컴펌완료|
|현수막2|50,000|2|100,000|체육대회|디자인/수량 컴펌완료|
|현수막3|50,000|2|100,000|학생파티|디자인/수량 컴펌완료|
|배너|50,000|2|100,000|골든벨|디자인/수량 컴펌완료| 

"""

# ╔═╡ d4354782-7346-4c46-9e38-bf9a97dcdaf0
md"""
### 4. 체험부스
##### 현수막
- 시안 전달 받지 못함 (9/19)
##### 팜플렛
- 시안 전달 받지 못함 (9/19)
"""

# ╔═╡ 95758c68-4f64-4d4d-945e-dbbc20de4ce6
md"""
### 5~7. 대중강연 (신유정)

##### 현수막
- 현수막 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8(123)_%E1%84%85%E1%85%B5%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA(4)_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5(56)_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5(7).pdf)  $\to$ 디자인정원 // 1,2,3페이지 참고(logo1은 [여기](https://github.com/miruetoto/yechan2/blob/main/logo.jpeg) 참고)
- 현수막 디자인 김상욱(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%80%E1%85%B5%E1%86%B7%E1%84%89%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%AE%E1%86%A80919.jpg)
- 현수막 디자인 하리하라(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%92%E1%85%A1%E1%84%85%E1%85%B5%E1%84%92%E1%85%A1%E1%84%85%E1%85%A10919.jpg), *배너파일로 잘못 업로드된 부분 수정*
- 현수막 디자인 송민령(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%89%E1%85%A9%E1%86%BC%E1%84%86%E1%85%B5%E1%86%AB%E1%84%85%E1%85%A7%E1%86%BC0919.jpg) *배너파일로 잘못 업로드된 부분 수정*
- 최종확인 

"""

# ╔═╡ 6a58588e-ff45-4e16-b72e-6a5ecc716790
md"""

##### 팜플렛
- 팜플렛 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8(123)_%E1%84%85%E1%85%B5%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA(4)_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5(56)_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5(7).pdf) $\to$ 디자인정원 // 4페이지 참고] (logo1은 [여기](https://github.com/miruetoto/yechan2/blob/main/logo.jpeg) 참고)
- 팜플렛 디자인(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%91%E1%85%A1%E1%86%B7%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA0919.jpg)
- 팜플렛 디자인 수정요청(0920): 전북대 $\to$ 디자인정원: 바깥쪽에 날짜가 잘못 기재되어 있음 (10/6일이 아니라 10/5일 (수요일) 10:30 ~ 5:30)
- 팜플렛 디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%91%E1%85%A1%E1%86%B7%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA_%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB(%E1%84%82%E1%85%A1%E1%86%AF%E1%84%8D%E1%85%A1%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC)0921.jpeg)
- 팜플렉 디자인 수정요청(0921): 전북대 $\to$ 디자인정원 // 안쪽 좌측면에 "과학, 묻다"를 "과학, 묻다!"로 변경 
"""

# ╔═╡ 9cdea5a9-8720-45f9-be1b-54bf39a51e2a
md"""

##### 포스터
- 포스터 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8(123)_%E1%84%85%E1%85%B5%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA(4)_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5(56)_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5(7).pdf) $\to$ 디자인정원 // 5,6페이지 참고 (logo1은 [여기](https://github.com/miruetoto/yechan2/blob/main/logo.jpeg) 참고)
- 포스터 디자인(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A50919.jpg), //// *최규빈: 신유정 교수님, QR코드 삭제필요하겠죠?*
- 포스터 디자인 수정요청(0920): 전북대 $\to$ 디자인정원: (1) 하단에 QR code 및 사전등록 안내 멘트 삭제 (2) "본 행사는 추첨을 통해 사은품을 드립니다" 안내 멘트도 삭제 
- 포스터 디자인(0921): 전북대 $\leftarrow$ [디자인정원A](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0921_A.jpeg), [디자인정원B](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0921_B.jpeg)
- 포스터선택 + 수정요청 (0921): 전북대 $\to$ 디자인정원 // 포스터B로 선택, 포스터B에서 수정할 내용은 아래와 같음 
1. "과학, 묻다"를 "과학, 묻다!"로 변경 
2. 각 연사 밑에/또는 위에 연사별 강연 시간을 추가 (예시: 김상욱 교수 (10:30~12:00), 이은희 작가 (2:00~3:30), 송민령 연구원 (4:00~5:30)) 
3. 김상욱 교수 위에 "<떨림과 울림> <김상욱의 양자 공부>"로 대표작 하나 더 추가

"""

# ╔═╡ ed651256-ad83-4a7b-8c73-6166d487a29f
md"""

##### 배너
- 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8(123)_%E1%84%85%E1%85%B5%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA(4)_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5(56)_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5(7).pdf) $\to$ 디자인정원 // 7페이지 참고 (logo1은 [여기](https://github.com/miruetoto/yechan2/blob/main/logo.jpeg) 참고)
- 배너 김상욱(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5_%E1%84%80%E1%85%B5%E1%86%B7%E1%84%89%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%AE%E1%86%A80919.jpg)
- 배너 하리하라(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5_%E1%84%92%E1%85%A1%E1%84%85%E1%85%B5%E1%84%92%E1%85%A1%E1%84%85%E1%85%A10919.jpg)
- 배너 송민령(0919): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5_%E1%84%89%E1%85%A9%E1%86%BC%E1%84%86%E1%85%B5%E1%86%AB%E1%84%85%E1%85%A7%E1%86%A80919.jpg)
- 배너 이은희/하리하라(0920) 수정요청: 전북대 $\to$ 디자인정원: 이은희 작가 밑에 (하리하라)를 기재 부탁합니다. 
- 배너 이은히/하라하라(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%8C%E1%85%AE%E1%86%BC%E1%84%80%E1%85%A1%E1%86%BC%E1%84%8B%E1%85%A7%E1%86%AB_%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5_0921(%E1%84%92%E1%85%A1%E1%84%85%E1%85%B5%E1%84%92%E1%85%A1%E1%84%85%E1%85%A1%E1%84%8E%E1%85%AE%E1%84%80%E1%85%A1).jpeg)
"""

# ╔═╡ 51a7210c-e02a-4704-8834-ffade49f7b77
md"""
|아이템|단가|수량|총액|비고|진행도|
|:-:|:-:|:-:|:-:|:-:|:-:|
|현수막(김상욱)|50,000|2|100,000|대중강연1|디자인/수량O 컴펌필요|
|현수막(하리하라)|50,000|2|100,000|대중강연2|디자인/수량 컴펌필요|
|현수막(송민령)|50,000|2|100,000|대중강연2|디자인/수량 컴펌필요|
|팜플렛|1167|300|350,000|대중강연(공통)|디자인/수량 컴펌필요|
|포스터|2,000|10|20,000|대중강연(공통)|디자인/수량 컴펌필요|
|배너(김상욱)|50,000|2|100,000|대중강연1|디자인/수량 컴펌필요|
|배너(하리하라)|50,000|2|100,000|대중강연2|디자인/수량 컴펌필요|
|배너(송민령)|50,000|2|100,000|대중강연2|디자인/수량 컴펌필요|
-  $\star$ 포스터수량은 기념식포스터 수량과 항상 동일하게 할 것 (둘중하나가 10개에서 변경되면 다른하나도 변경할 것)
"""

# ╔═╡ 8430cd75-cebd-4ec3-92c2-d4c05d70a76a
md"""
### 8-9. 리서치페어, 대학원간담회 (조경빈)
##### 현수막
- 리서치페어 현수막 시안(0920): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%85%E1%85%B5%E1%84%89%E1%85%A5%E1%84%8E%E1%85%B5%E1%84%91%E1%85%A6%E1%84%8B%E1%85%A5_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8.pdf) $\to$ 디자인정원 
- 대학원간담회 현수막 시안(0920): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A1%E1%86%A8%E1%84%8B%E1%85%AF%E1%86%AB%E1%84%80%E1%85%A1%E1%86%AB%E1%84%83%E1%85%A1%E1%86%B7%E1%84%92%E1%85%AC_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8.pdf) $\to$ 디자인정원 
- 리서치페어 현수막 디자인(0920): 전북대 $\leftarrow$ [디자인정원(A타입)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%85%E1%85%B5%E1%84%89%E1%85%A5%E1%84%8E%E1%85%B5%E1%84%91%E1%85%A6%E1%84%8B%E1%85%A5%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8A.jpg), [디자인정원(B타입)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%85%E1%85%B5%E1%84%89%E1%85%A5%E1%84%8E%E1%85%B5%E1%84%91%E1%85%A6%E1%84%8B%E1%85%A5%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8B.jpg)
- 대학원간담회 현수막 디자인(0920): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A1%E1%86%A8%E1%84%8B%E1%85%AF%E1%86%AB%E1%84%80%E1%85%A1%E1%86%AB%E1%84%83%E1%85%A1%E1%86%B7%E1%84%92%E1%85%AC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8.jpg)

- 대학원생간담회 현수막 디자인 OK (0921): 전북대 $\to$ 디자인정원 
- 리서치페어(0921) 수정요청: [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%85%E1%85%B5%E1%84%89%E1%85%A5%E1%84%8E%E1%85%B5%E1%84%91%E1%85%A6%E1%84%8B%E1%85%A5%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8A-mod_0921.jpg) $\to$ 디자인정원 

##### 포스터
- 임지석선생님과 별도 진행
"""

# ╔═╡ 2bacc479-1ad2-4a41-907b-afa9ff1b4f49
md"""
|아이템|단가|수량|총액|비고|진행도|
|:-:|:-:|:-:|:-:|:-:|:-:|
|현수막(리서치페어)|50,000|2|100,000|리서치페어|수량컨펌완료(디자인은X)|
|현수막(대학원간담회)|50,000|1|50,000|대학원간담회(스모가스보드)|수량컨펌완료(디자인은X)|
"""

# ╔═╡ d6d281c8-e0bf-4f0d-99f8-10af2d01ca34
md"""
### 10. 기념식수
##### 현수막
- 시안 전달 받지 못함 (9/19)


"""

# ╔═╡ 4d00cd23-c845-4f0b-a17d-4a0f8ff13685
md"""
### 11. 기념공연, 기념식, 기념강연공통
##### 팜플렛
- 시안 전달 받지 못함 (9/19)


"""

# ╔═╡ fe34e641-9c0d-4f94-adb1-3d4f85f10560
md"""
### 13. 기념식 
##### 현수막
- 시안 전달 받지 못함 (9/19)

##### 배너
"""

# ╔═╡ 2f24d89c-e70a-4fa2-ae15-f1d4456ffc45
md"""
### 15. 7문7답
##### 현수막
- 시안 전달 받지 못함 (9/19)

##### 팜플렛 
- 시안 전달 받지 못함 (9/19)

##### 배너 
- 시안 전달 받지 못함 (9/19)
"""

# ╔═╡ c2ade213-657d-4b8a-b098-f7bd19f3dad3
md"""
### 16. 온라인행사
##### 포스터
- 시안 전달 받지 못함 (9/19)
"""

# ╔═╡ 243d4b3f-22d2-45dc-8c64-11677528d4b0
md"""
### 17. 학생발표대회
##### 현수막
- 시안 전달 받지 못함 (9/19)
"""

# ╔═╡ 0a699bb4-8fc6-4ac1-96b8-0a2297fab238
md"""
## 전체행사 홍보물작성계획
"""

# ╔═╡ 55560e76-aaef-446e-bcd0-c0aeafca51d9
md"""
### 1. 전체행사 홍보물 (김명훈)
##### 대형현수막 (김명훈)
- 대형현수막 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8.pptx) $\to$ 디자인정원
> 참고자료들: [전북대로고1](https://github.com/miruetoto/yechan2/blob/main/JBNU1.png), [전북대로고2](https://github.com/miruetoto/yechan2/blob/main/JBNU2.ai), [교육부로고](https://github.com/miruetoto/yechan2/blob/main/%E1%84%80%E1%85%AD%E1%84%8B%E1%85%B2%E1%86%A8%E1%84%87%E1%85%AE.ai), [UN세계기초과학의해 로고](https://github.com/miruetoto/yechan2/blob/main/UN.jpg)

- 대형현수막 디자인(0920): 전북대 $\leftarrow$ [디자인정원(A타입)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A80920_A.jpg), [디자인정원(B타입)](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A80920_B.jpg)

- 대형현수막 디자인 수정요청(0920): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC0920.pptx) $\to$ 디자인정원

- 대형현수막 디자인(0920): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A80920%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC.jpg)

- 대형현수막 디자인 수정요청(0921): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC%E1%84%8B%E1%85%AD%E1%84%8E%E1%85%A5%E1%86%BC_0921.pptx) $\to$ 디자인정원 

- 대형현수막 디자인(0922): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%83%E1%85%A2%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0922.jpeg)

|아이템|단가|수량|총액|비고|진행도|
|:-:|:-:|:-:|:-:|:-:|:-:|
|대형현수막|1,100,000|1|1,100,000|실크로드센터|디자인컨펌필요|
|설치비|400,000|1|400,000| | |

"""

# ╔═╡ 9bca04e5-f06d-4371-8fb4-b617882c83bc
md"""

##### 초대장 + 봉투 (김명훈)
- 초대장 시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%86%E1%85%AE%E1%86%AF.zip) $\to$ 디자인정원
> 참고사항: 초대장 마지막페이지 제목을 "전북대학교 자연과학대학주간(10/4 - 10/7)" 로 변경 (날짜삽입)

- 봉투 시안(0920): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%87%E1%85%A9%E1%86%BC%E1%84%90%E1%85%AE%E1%84%89%E1%85%B5%E1%84%8B%E1%85%A1%E1%86%AB.pptx) $\to$ 디자인정원 

- 초대장 디자인(0920): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%8E%E1%85%A9%E1%84%83%E1%85%A2%E1%84%8C%E1%85%A1%E1%86%BC0920.jpg)

- 초대장 디자인 수정요청(0921): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%8E%E1%85%A9%E1%84%83%E1%85%A2%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC_0921.pptx) $\to$ 디자인정원

- 초대장 디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%8E%E1%85%A9%E1%84%83%E1%85%A2%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC_0921.jpeg)

- 초대장 디자인 수정요청(0922): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%8E%E1%85%A9%E1%84%83%E1%85%A2%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%8C%E1%85%A2%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC_0922.pptx) $\to$ 디자인정원 

- 초대장 디자인(0922): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%8E%E1%85%A9%E1%84%83%E1%85%A2%E1%84%8C%E1%85%A1%E1%86%BC%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0922.jpeg)
"""

# ╔═╡ 3e7c44e1-79a5-4ee0-864a-6f3cff1cb451
md"""

##### 포스터 
- 포스터시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%86%E1%85%AE%E1%86%AF.zip) $\to$ 디자인정원

- 포스터디자인(0920): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5_0920.jpg), *포스터시안02는 작업중*
> 포스터관련문의(**김명훈교수님 답변요망**): 포스터 시안 작업하려는데 좌측이 포스터1, 우측이 포스터2 요청시안이에요. 보통 포스터 세로로 쓰는데, 요청시안이 가로라...포스터2를 가로로 사용하시는건지 확인 부탁드릴 수 있나요?

> 포스터관련 답변(From 김명훈교수님): 맞습니다. 하나는 세로 하나는 가로입니다. 

- 포스터디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB02_0921.jpg)

- 포스터시안(0922): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%91%E1%85%A9%E1%84%89%E1%85%B3%E1%84%90%E1%85%A5%E1%84%89%E1%85%AE%E1%84%8C%E1%85%A5%E1%86%BC%E1%84%8B%E1%85%AD%E1%84%8E%E1%85%A5%E1%86%BC_0922.pptx) $\to$ 디자인정원 // *QR코드는 추후 재수정 할 예정임.*

"""

# ╔═╡ 68ef53ac-4ea1-4f88-8c5a-99957f37d835
md"""

##### 팜플렛 + 봉투 
- 팜플렛시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%86%E1%85%AE%E1%86%AF.zip) $\to$ 디자인정원

- 봉투시안(0920): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%87%E1%85%A9%E1%86%BC%E1%84%90%E1%85%AE%E1%84%89%E1%85%B5%E1%84%8B%E1%85%A1%E1%86%AB.pptx) $\to$ 디자인정원

- 봉투디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%87%E1%85%A9%E1%86%BC%E1%84%90%E1%85%AE0920.jpg)

- 팜플렛디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%91%E1%85%A1%E1%86%B7%E1%84%91%E1%85%B3%E1%86%AF%E1%84%85%E1%85%A6%E1%86%BA%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0921.jpg)

"""

# ╔═╡ 74263ad5-07cb-4a72-9b29-379bd8ea27a6
md"""

##### 기념식카드 
- 기념식카드시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%86%E1%85%AE%E1%86%AF.zip) $\to$ 디자인정원

- 기념식카드디자인(0921): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%80%E1%85%B5%E1%84%82%E1%85%A7%E1%86%B7%E1%84%89%E1%85%B5%E1%86%A8%E1%84%8F%E1%85%A1%E1%84%83%E1%85%B3%E1%84%83%E1%85%B5%E1%84%8C%E1%85%A1%E1%84%8B%E1%85%B5%E1%86%AB_0921.jpg)

"""

# ╔═╡ 5f7f4043-3313-4136-bf22-a34daa502942
md"""

##### 소형현수막 
- 현수막시안(0919): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A9%E1%86%BC%E1%84%87%E1%85%A9%E1%84%86%E1%85%AE%E1%86%AF.zip) $\to$ 디자인정원

- 현수막디자인(0920): 전북대 $\leftarrow$ [디자인정원](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8_0920.jpg), *최규빈: 김명훈 교수님, 사이즈지정되지 않아 임의로 500$\times$70으로 작업했습니다. 사이즈컨펌부탁합니다* 

- 현수막시안(0922): [전북대](https://github.com/miruetoto/yechan2/blob/main/%E1%84%8C%E1%85%A5%E1%86%AB%E1%84%8E%E1%85%A6%E1%84%92%E1%85%A2%E1%86%BC%E1%84%89%E1%85%A1_%E1%84%89%E1%85%A9%E1%84%92%E1%85%A7%E1%86%BC%E1%84%92%E1%85%A7%E1%86%AB%E1%84%89%E1%85%AE%E1%84%86%E1%85%A1%E1%86%A8(500x70)_0922.pptx) $\to$ 디자인정원 // *사이즈는 500x70 으로 진행하시면됩니다.*

"""

# ╔═╡ 8ccb68f8-37aa-49f9-b80e-179d967c088a
md"""
### 2. 깃발, 신정문광고 (임지석?)

- 
"""

# ╔═╡ 6732f336-8259-4b2a-b41b-25bcdeed2a0f
md"""
### 3. 각종 기념품 (김명훈)
- 우산
- 티셔츠
"""

# ╔═╡ c8e1d15f-b70c-4616-b9ca-ef78fca4db39
md"""
## 전체 견적서 
"""

# ╔═╡ f97b4c0f-00fd-4cad-8ead-5f9088b1ff66
md"""
|아이템|단가(1장당)|수량|
|:-:|:-:|:-:|
|초대장(봉투) 200 $\times$ 180|667| 300 | 
|초대장(리플렛) 210 $\times$ 297|1167| 300 | 
|포스터 420 $\times$ 594|2,000| ?|
|배너 600 $\times$ 1800| 50,000| ? |
|대형현수막 7000 $\times$ 12000|1,500,000 [^1]| 1 |
|현수막 900 $\times$ 6000|50,000 |?|
[^1] 설치비포함금액
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.40"
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
git-tree-sha1 = "3d5bf43e3e8b412656404ed9466f1dcbf7c50269"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.4.0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "a602d7b0babfca89005da04d89223b867b55319f"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.40"

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
# ╠═fb981bbc-93b3-4d58-ae12-68374b3ff51d
# ╠═0bf00a57-45ca-4f06-89b8-93c997995c30
# ╟─9c5d6224-1c4a-11ed-24aa-895284173cfa
# ╟─49ba5aff-6dd2-4179-9d86-f0071dd293ac
# ╟─84504a4d-09d9-4149-a665-6369e9c52763
# ╟─d73d2a79-fbfd-4056-a5f0-5833dea8cede
# ╟─8b7eba6f-255d-40c6-8058-0ab54f21b026
# ╟─328f854a-af2e-4c84-bf70-dd10e3fddf50
# ╟─e0e83565-d166-46a8-8c9f-a23f58c7b0ba
# ╟─23a2b6ee-3d29-4183-b59c-088eeb61360b
# ╟─9f5fec8f-ce3d-4271-a586-f164761e2844
# ╟─aafc7e59-f80b-4967-9666-d6aec4044f63
# ╟─ab2bdb35-ec0a-47ba-baff-ceb1c26912d6
# ╟─3d0d47d5-23f5-4725-8208-c017e4dd737e
# ╟─23f16dfe-566e-446f-9676-015822b74c3e
# ╟─d4354782-7346-4c46-9e38-bf9a97dcdaf0
# ╟─95758c68-4f64-4d4d-945e-dbbc20de4ce6
# ╟─6a58588e-ff45-4e16-b72e-6a5ecc716790
# ╟─9cdea5a9-8720-45f9-be1b-54bf39a51e2a
# ╟─ed651256-ad83-4a7b-8c73-6166d487a29f
# ╟─51a7210c-e02a-4704-8834-ffade49f7b77
# ╠═8430cd75-cebd-4ec3-92c2-d4c05d70a76a
# ╟─2bacc479-1ad2-4a41-907b-afa9ff1b4f49
# ╟─d6d281c8-e0bf-4f0d-99f8-10af2d01ca34
# ╟─4d00cd23-c845-4f0b-a17d-4a0f8ff13685
# ╟─fe34e641-9c0d-4f94-adb1-3d4f85f10560
# ╟─2f24d89c-e70a-4fa2-ae15-f1d4456ffc45
# ╟─c2ade213-657d-4b8a-b098-f7bd19f3dad3
# ╟─243d4b3f-22d2-45dc-8c64-11677528d4b0
# ╟─0a699bb4-8fc6-4ac1-96b8-0a2297fab238
# ╟─55560e76-aaef-446e-bcd0-c0aeafca51d9
# ╟─9bca04e5-f06d-4371-8fb4-b617882c83bc
# ╠═3e7c44e1-79a5-4ee0-864a-6f3cff1cb451
# ╠═68ef53ac-4ea1-4f88-8c5a-99957f37d835
# ╟─74263ad5-07cb-4a72-9b29-379bd8ea27a6
# ╠═5f7f4043-3313-4136-bf22-a34daa502942
# ╟─8ccb68f8-37aa-49f9-b80e-179d967c088a
# ╟─6732f336-8259-4b2a-b41b-25bcdeed2a0f
# ╟─c8e1d15f-b70c-4616-b9ca-ef78fca4db39
# ╟─f97b4c0f-00fd-4cad-8ead-5f9088b1ff66
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
