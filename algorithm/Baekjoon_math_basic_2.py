# %%
"""
주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.

입력
첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.

출력
주어진 수들 중 소수의 개수를 출력한다.
"""
n = int(input())
lst = input().split()

c = n
for i in range(n):
  x = int(lst[i])
  
  if x <= 1:
    c -= 1
  else:
    for j in range(2, x):
      if x % j == 0:
        c -= 1
        break

print(c)

# %%
"""
자연수 M과 N이 주어질 때,

M이상 N이하의 자연수 중 소수인 것을 모두 골라

이들 소수의 합과 최솟값을 찾는 프로그램을 작성하시오.

예를 들어 M=60, N=100인 경우

60이상 100이하의 자연수 중 소수는 61, 67, 71, 73, 79, 83, 89, 97 총 8개가 있으므로,

이들 소수의 합은 620이고, 최솟값은 61이 된다.

입력
입력의 첫째 줄에 M이, 둘째 줄에 N이 주어진다.

M과 N은 10,000이하의 자연수이며, M은 N보다 작거나 같다.

출력
M이상 N이하의 자연수 중 소수인 것을 모두 찾아 첫째 줄에 그 합을, 둘째 줄에 그 중 최솟값을 출력한다. 

단, M이상 N이하의 자연수 중 소수가 없을 경우는 첫째 줄에 -1을 출력한다.
"""
m = int(input())
n = int(input())
lst = list(range(m, n+1))
pn_lst = []

for i in lst:
  t = 0
  for j in range(2, i):
    if i % j == 0:
      t = 1
      break
    
  if i > 1 and t == 0:
    pn_lst.append(i)

if len(pn_lst) == 0:
  print(-1)
else:
  print(sum(pn_lst))
  print(min(pn_lst))
  
# %%
"""
정수 N이 주어졌을 때, 소인수분해하는 프로그램을 작성하시오.

입력
첫째 줄에 정수 N (1 ≤ N ≤ 10,000,000)이 주어진다.

출력
N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다. N이 1인 경우 아무것도 출력하지 않는다.
"""
n = int(input())

for i in range(2, n+1):
  while n % i == 0:
    print(i)
    n /= i
  
# %%
"""
M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 자연수 M과 N이 빈 칸을 사이에 두고 주어진다. (1 ≤ M ≤ N ≤ 1,000,000) M이상 N이하의 소수가 하나 이상 있는 입력만 주어진다.

출력
한 줄에 하나씩, 증가하는 순서대로 소수를 출력한다.
"""
m, n = input().split()
m = int(m)
n = int(n)

for i in range(m, n+1):
  t = 0
  for j in range(2, int(i**(1/2)+1)):
    if i % j == 0:
      t = 1
      break
    
  if i > 1 and t == 0:
    print(i)
    
# %%
"""
베르트랑 공준 (Bertrand's postulate)

문제
베르트랑 공준은 임의의 자연수 n에 대하여,

n보다 크고, 2n보다 작거나 같은 소수는 적어도 하나 존재한다는 내용을 담고 있다.

이 명제는 조제프 베르트랑이 1845년에 추측했고, 파프누티 체비쇼프가 1850년에 증명했다.

예를 들어, 10보다 크고, 20보다 작거나 같은 소수는 4개가 있다.

(11, 13, 17, 19) 또, 14보다 크고, 28보다 작거나 같은 소수는 3개가 있다. (17,19, 23)

자연수 n이 주어졌을 때, n보다 크고, 2n보다 작거나 같은 소수의 개수를 구하는 프로그램을 작성하시오. 

입력
입력은 여러 개의 테스트 케이스로 이루어져 있다. 각 케이스는 n을 포함하는 한 줄로 이루어져 있다.

입력의 마지막에는 0이 주어진다.

출력
각 테스트 케이스에 대해서, n보다 크고, 2n보다 작거나 같은 소수의 개수를 출력한다.
"""
def prime(n):
  if n == 1:
    return False
  elif n == 2:
    return True
  else:
    for i in range(2, int(n**0.5)+1):
      if n % i == 0:
        return False
  return True

f_list = list(range(1, 123456*2+1))
p_list = []
for i in f_list:
  if prime(i):
    p_list.append(i)

while True:
  n = int(input())
  if n == 0:
    break
  
  c = 0
  for i in p_list:
    if n < i <= 2*n:
      c += 1
      
  print(c)
  
# %%
