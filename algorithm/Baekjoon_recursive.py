# %%
"""
문제
0보다 크거나 같은 정수 N이 주어진다. 이때, N!을 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 정수 N(0 ≤ N ≤ 12)이 주어진다.

출력
첫째 줄에 N!을 출력한다.
"""
from re import L
from numpy import source


def factorial(n):
  if n == 0 or n == 1:
    return 1
  
  return n * factorial(n-1)

n = int(input())
print(factorial(n))

# %%
"""
문제
피보나치 수는 0과 1로 시작한다.

0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다.

그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.

이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n ≥ 2)가 된다.

n=17일때 까지 피보나치 수를 써보면 다음과 같다.

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597

n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오.

입력
첫째 줄에 n이 주어진다. n은 20보다 작거나 같은 자연수 또는 0이다.

출력
첫째 줄에 n번째 피보나치 수를 출력한다.
"""
def fibonacci(n):
  if n == 0:
    return 0
  if n == 1 or n == 2:
    return 1
  
  return fibonacci(n-2) + fibonacci(n-1)

n = int(input())
print(fibonacci(n))

# %%
"""
문제
재귀적인 패턴으로 별을 찍어 보자.

N이 3의 거듭제곱(3, 9, 27, ...)이라고 할 때, 크기 N의 패턴은 N×N 정사각형 모양이다.

크기 3의 패턴은 가운데에 공백이 있고, 가운데를 제외한 모든 칸에 별이 하나씩 있는 패턴이다.

***
* *
***
N이 3보다 클 경우, 크기 N의 패턴은 공백으로 채워진 가운데의 (N/3)×(N/3) 정사각형을 크기 N/3의 패턴으로 둘러싼 형태이다.

예를 들어 크기 27의 패턴은 예제 출력 1과 같다.

입력
첫째 줄에 N이 주어진다. N은 3의 거듭제곱이다. 즉 어떤 정수 k에 대해 N=3**k이며, 이때 1 ≤ k < 8이다.

출력
첫째 줄부터 N번째 줄까지 별을 출력한다.
"""
def star(n, lst):
  if n == 1:
    return
  
  c = len(lst)
  r = c // n
  s = n // 3
  xy = []
  for i in range(1, 3*r, 3):
    for j in range(s):
      xy.append(s*i+j)
      
  for x in xy:
    for y in xy:
      lst[x][y] = " "
      
  return star(n//3, lst)

n = int(input())
lst = []
for i in range(n):
  l = []
  for j in range(n):
    l.append("*")
  lst.append(l)

star(n, lst)
for i in range(n):
  for j in range(n):
    print(lst[i][j], end="")
  print()

# %%
