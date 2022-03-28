# %%
"""
문제
카지노에서 제일 인기 있는 게임 블랙잭의 규칙은 상당히 쉽다.

카드의 합이 21을 넘지 않는 한도 내에서, 카드의 합을 최대한 크게 만드는 게임이다.

블랙잭은 카지노마다 다양한 규정이 있다.

한국 최고의 블랙잭 고수 김정인은 새로운 블랙잭 규칙을 만들어 상근, 창영이와 게임하려고 한다.

김정인 버전의 블랙잭에서 각 카드에는 양의 정수가 쓰여 있다.

그 다음, 딜러는 N장의 카드를 모두 숫자가 보이도록 바닥에 놓는다.

그런 후에 딜러는 숫자 M을 크게 외친다.

이제 플레이어는 제한된 시간 안에 N장의 카드 중에서 3장의 카드를 골라야 한다.

블랙잭 변형 게임이기 때문에, 플레이어가 고른 카드의 합은 M을 넘지 않으면서 M과 최대한 가깝게 만들어야 한다.

N장의 카드에 써져 있는 숫자가 주어졌을 때,

M을 넘지 않으면서 M에 최대한 가까운 카드 3장의 합을 구해 출력하시오.

입력
첫째 줄에 카드의 개수 N(3 ≤ N ≤ 100)과 M(10 ≤ M ≤ 300,000)이 주어진다.

둘째 줄에는 카드에 쓰여 있는 수가 주어지며, 이 값은 100,000을 넘지 않는 양의 정수이다.

합이 M을 넘지 않는 카드 3장을 찾을 수 있는 경우만 입력으로 주어진다.

출력
첫째 줄에 M을 넘지 않으면서 M에 최대한 가까운 카드 3장의 합을 출력한다.
"""
from itertools import combinations

n, m = map(int, input().split())
lst = list(map(int, input().split()))

c = list(map(sum, combinations(lst, 3)))

l = [i for i in c if i <= m]
l.sort()

print(l[-1])


# %%
"""
문제
어떤 자연수 N이 있을 때, 그 자연수 N의 분해합은 N과 N을 이루는 각 자리수의 합을 의미한다.

어떤 자연수 M의 분해합이 N인 경우, M을 N의 생성자라 한다.

예를 들어, 245의 분해합은 256(=245+2+4+5)이 된다. 따라서 245는 256의 생성자가 된다.

물론, 어떤 자연수의 경우에는 생성자가 없을 수도 있다.

반대로, 생성자가 여러 개인 자연수도 있을 수 있다.

자연수 N이 주어졌을 때, N의 가장 작은 생성자를 구해내는 프로그램을 작성하시오.

입력
첫째 줄에 자연수 N(1 ≤ N ≤ 1,000,000)이 주어진다.

출력
첫째 줄에 답을 출력한다. 생성자가 없는 경우에는 0을 출력한다.
"""
n = int(input())
ans = 0

for i in range(1, n+1):
  m = sum([int(j) for j in str(i)])
  
  if i + m == n:
    ans = i
    break

print(ans)

