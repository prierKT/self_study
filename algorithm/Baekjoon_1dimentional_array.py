# %% [markdown]
# 1차원 배열

# %%
"""
N개의 정수가 주어진다.

이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.
"""
n = int(input())
m = input().split()

for i in range(n):
  m[i] = int(m[i])
m.sort()

print(m[0], m[-1])

# %%
"""
9개의 서로 다른 자연수가 주어질 때,

이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.

예를 들어, 서로 다른 9개의 자연수

3, 29, 38, 12, 57, 74, 40, 85, 61

이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.
"""
lst = []
for i in range(9):
  n = int(input())
  lst.append(n)

m = max(lst)
print(m, lst.index(m) + 1, sep='\n')

# %%
"""
세 개의 자연수 A, B, C가 주어질 때,

A × B × C를 계산한 결과에 0부터 9까지 각각의 숫자가 몇 번씩 쓰였는지를 구하는 프로그램을 작성하시오.

예를 들어 A = 150, B = 266, C = 427 이라면 A × B × C = 150 × 266 × 427 = 17037300 이 되고,

계산한 결과 17037300 에는 0이 3번, 1이 1번, 3이 2번, 7이 2번 쓰였다.
"""
lst = []
for i in range(3):
  n = int(input())
  lst.append(n)

x = 1
for i in lst:
  x *= i

cha = str(x)
for i in range(10):
  print(cha.count(str(i)))

# %%
"""
두 자연수 A와 B가 있을 때, A%B는 A를 B로 나눈 나머지 이다.

예를 들어, 7, 14, 27, 38을 3으로 나눈 나머지는 1, 2, 0, 2이다. 

수 10개를 입력받은 뒤, 이를 42로 나눈 나머지를 구한다.

그 다음 서로 다른 값이 몇 개 있는지 출력하는 프로그램을 작성하시오.
"""
lst = []
for _ in range(10):
  n = int(input())
  n %= 42
  lst.append(n)

print(len(set(lst)))

# %%
"""
세준이는 기말고사를 망쳤다. 세준이는 점수를 조작해서 집에 가져가기로 했다.

일단 세준이는 자기 점수 중에 최댓값을 골랐다. 이 값을 M이라고 한다.

그리고 나서 모든 점수를 점수/M*100으로 고쳤다.

예를 들어, 세준이의 최고점이 70이고, 수학점수가 50이었으면

수학점수는 50/70*100이 되어 71.43점이 된다.

세준이의 성적을 위의 방법대로 새로 계산했을 때, 새로운 평균을 구하는 프로그램을 작성하시오.
"""
n = int(input()) # 과목 수
lst = input().split()
for i in range(n):
  lst[i] = int(lst[i]) # 점수
  
m = max(lst)
for i in range(n):
  lst[i] = lst[i] / m * 100

print(sum(lst)/n)

# %%
"""
"OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다.

O는 문제를 맞은 것이고, X는 문제를 틀린 것이다.

문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다.

예를 들어, 10번 문제의 점수는 3이 된다.

"OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.

OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.
"""
n = int(input())
for i in range(n):
  result = input().split('X')
  total_score = 0
  for j in result:
    score = 0
    if len(j) != 0:
      for k in range(len(j)):
        k += 1
        score += k
        
    total_score += score
  print(total_score)

# %%
"""
대학생 새내기들의 90%는 자신이 반에서 평균은 넘는다고 생각한다.

당신은 그들에게 슬픈 진실을 알려줘야 한다.

첫째 줄에는 테스트 케이스의 개수 C가 주어진다.

둘째 줄부터 각 테스트 케이스마다 학생의 수 N(1 ≤ N ≤ 1000, N은 정수)이 첫 수로 주어지고,

이어서 N명의 점수가 주어진다. 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.

각 케이스마다 한 줄씩 평균을 넘는 학생들의 비율을 반올림하여 소수점 셋째 자리까지 출력한다.
"""
n = int(input())
for _ in range(n):
  lst = input().split()
  lst = [int(i) for i in lst]
    
  average_score = sum(lst[1:]) / lst[0]
  n_student = 0
  for i in range(1, len(lst)):
    if lst[i] > average_score:
      n_student += 1
      
  ratio = n_student / lst[0] * 100
  print("{:.3f}%".format(ratio))