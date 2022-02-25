# %%
"""
월드전자는 노트북을 제조하고 판매하는 회사이다.

노트북 판매 대수에 상관없이 매년 임대료, 재산세, 보험료, 급여 등 A만원의 고정 비용이 들며,

한 대의 노트북을 생산하는 데에는 재료비와 인건비 등 총 B만원의 가변 비용이 든다고 한다.

예를 들어 A=1,000, B=70이라고 하자.

이 경우 노트북을 한 대 생산하는 데는 총 1,070만원이 들며, 열 대 생산하는 데는 총 1,700만원이 든다.

노트북 가격이 C만원으로 책정되었다고 한다.

일반적으로 생산 대수를 늘려 가다 보면 어느 순간 총 수입(판매비용)이 총 비용(=고정비용+가변비용)보다 많아지게 된다.

최초로 총 수입이 총 비용보다 많아져 이익이 발생하는 지점을 손익분기점(BREAK-EVEN POINT)이라고 한다.

A, B, C가 주어졌을 때, 손익분기점을 구하는 프로그램을 작성하시오.

입력
첫째 줄에 A, B, C가 빈 칸을 사이에 두고 순서대로 주어진다. A, B, C는 21억 이하의 자연수이다.

출력
첫 번째 줄에 손익분기점 즉 최초로 이익이 발생하는 판매량을 출력한다. 손익분기점이 존재하지 않으면 -1을 출력한다.
"""
from sympy import numer, per


a, b, c = input().split()
a = int(a)
b = int(b)
c = int(c)

while True:
  earn = c - b
  
  if b >= c:
    print(-1)
    break
  else:
    bep = a // earn + 1
    print(bep)
    break

# %%
"""
위의 그림과 같이 육각형으로 이루어진 벌집이 있다.

그림에서 보는 바와 같이 중앙의 방 1부터 시작해서

이웃하는 방에 돌아가면서 1씩 증가하는 번호를 주소로 매길 수 있다.

숫자 N이 주어졌을 때,

벌집의 중앙 1에서 N번 방까지 최소 개수의 방을 지나서 갈 때

몇 개의 방을 지나가는지(시작과 끝을 포함하여)를 계산하는 프로그램을 작성하시오.

예를 들면, 13까지는 3개, 58까지는 5개를 지난다.
"""
n = int(input())

r = 1
while n > 1:
  n -= 6 * r
  r += 1
  
print(r)

# %%
"""
1/1	1/2	1/3	1/4	1/5	 …
2/1	2/2	2/3	2/4	 …	 …
3/1	3/2	3/3	 …	 …	 …
4/1	4/2	 …	 …	 …	 …
5/1	 …	 … 	 … 	 …	 …
…	   …	 …	 …	 …	 …

이와 같이 나열된 분수들을 1/1 → 1/2 → 2/1 → 3/1 → 2/2 → … 과 같은 지그재그 순서로 차례대로 1번, 2번, 3번, 4번, 5번, … 분수라고 하자.

X가 주어졌을 때, X번째 분수를 구하는 프로그램을 작성하시오.
"""
x = int(input())

i = 1
while x > i:
  x -= i
  i += 1 

if i % 2 == 0:
  for j in range(x):
    numerator = j + 1
    denominator = i - j
else:
  for j in range(x):
    numerator = i - j
    denominator = j + 1

print(f"{numerator}/{denominator}")

# %%
"""
땅 위에 달팽이가 있다. 이 달팽이는 높이가 V미터인 나무 막대를 올라갈 것이다.

달팽이는 낮에 A미터 올라갈 수 있다. 하지만, 밤에 잠을 자는 동안 B미터 미끄러진다.

또, 정상에 올라간 후에는 미끄러지지 않는다.

달팽이가 나무 막대를 모두 올라가려면, 며칠이 걸리는지 구하는 프로그램을 작성하시오.

입력
첫째 줄에 세 정수 A, B, V가 공백으로 구분되어서 주어진다. (1 ≤ B < A ≤ V ≤ 1,000,000,000)

출력
첫째 줄에 달팽이가 나무 막대를 모두 올라가는데 며칠이 걸리는지 출력한다.
"""
a, b, v = input().split()
a = int(a)
b = int(b)
v = int(v)

if v <= a:
  print(1)
else:
  if (v - a) % (a - b):
    print((v - a) // (a - b) + 2)
  else:
    print((v - a) // (a - b) + 1)

# %%
"""
ACM 호텔 매니저 지우는 손님이 도착하는 대로 빈 방을 배정하고 있다.

고객 설문조사에 따르면 손님들은 호텔 정문으로부터 걸어서 가장 짧은 거리에 있는 방을 선호한다고 한다.

여러분은 지우를 도와 줄 프로그램을 작성하고자 한다.

즉 설문조사 결과 대로 호텔 정문으로부터 걷는 거리가 가장 짧도록 방을 배정하는 프로그램을 작성하고자 한다.

문제를 단순화하기 위해서 호텔은 직사각형 모양이라고 가정하자.

각 층에 W 개의 방이 있는 H 층 건물이라고 가정하자 (1 ≤ H, W ≤ 99).

그리고 엘리베이터는 가장 왼쪽에 있다고 가정하자(그림 1 참고).

이런 형태의 호텔을 H × W 형태 호텔이라고 부른다.

호텔 정문은 일층 엘리베이터 바로 앞에 있는데, 정문에서 엘리베이터까지의 거리는 무시한다.

또 모든 인접한 두 방 사이의 거리는 같은 거리(거리 1)라고 가정하고 호텔의 정면 쪽에만 방이 있다고 가정한다.

방 번호는 YXX 나 YYXX 형태인데 여기서 Y 나 YY 는 층 수를 나타내고,

XX 는 엘리베이터에서부터 세었을 때의 번호를 나타낸다.

즉, 그림 1 에서 빗금으로 표시한 방은 305 호가 된다.

손님은 엘리베이터를 타고 이동하는 거리는 신경 쓰지 않는다.

다만 걷는 거리가 같을 때에는 아래층의 방을 더 선호한다.

예를 들면 102 호 방보다는 301 호 방을 더 선호하는데,

102 호는 거리 2 만큼 걸어야 하지만 301 호는 거리 1 만큼만 걸으면 되기 때문이다.

같은 이유로 102 호보다 2101 호를 더 선호한다.

여러분이 작성할 프로그램은 초기에 모든 방이 비어있다고 가정하에 이 정책에 따라 N 번째로 도착한 손님에게 배정될 방 번호를 계산하는 프로그램이다. 첫 번째 손님은 101 호, 두 번째 손님은 201 호 등과 같이 배정한다.

그림 1 의 경우를 예로 들면, H = 6이므로 10 번째 손님은 402 호에 배정해야 한다.

입력
프로그램은 표준 입력에서 입력 데이터를 받는다.
프로그램의 입력은 T 개의 테스트 데이터로 이루어져 있는데 T 는 입력의 맨 첫 줄에 주어진다.
각 테스트 데이터는 한 행으로서 H, W, N, 세 정수를 포함하고 있으며
각각 호텔의 층 수, 각 층의 방 수, 몇 번째 손님인지를 나타낸다(1 ≤ H, W ≤ 99, 1 ≤ N ≤ H × W). 

출력
프로그램은 표준 출력에 출력한다.
각 테스트 데이터마다 정확히 한 행을 출력하는데,
내용은 N 번째 손님에게 배정되어야 하는 방 번호를 출력한다.
"""
t = int(input())
for _ in range(t):
  h, w, n = input().split()
  h = int(h)
  w = int(w)
  n = int(n)
  
  dw = 1
  dh = 0
  c = 0
  while True:
    c += 1
    dh += 1
    
    if dh == h+1:
      dh = 1
      dw += 1
      
    if c == n:
      break
    
  if dw < 10:
    print(str(dh) + '0' + str(dw))
  else:
    print(str(dh) + str(dw)) 
    
# %%
