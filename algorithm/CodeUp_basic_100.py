# %%
# no.11
f = float(input())

print(type(f))
print(f)

# %%
# no.12
a = input()
b = input()

print(a)
print(b)

# %%
# no.13
a = input()
b = input()

print(b)
print(a)

# %%
# no.14
f = float(input())

print(f)
print(f)
print(f)

# %%
# no.15
a, b = input().split()

print(a, b, sep='\n')

# %%
# no.16
a, b = input().split()

print(b, a)

# %%
# no.17
a = input()

print(a, a, a)

# %%
# no.18
h, m = input().split(':')

print(h, m, sep=':')

# %%
# no.19
y, m, d = input().split('.')

print(d, m, y, sep='-')

# %%
# no.20
a, b = input().split('-')

print(a + b)
print(a, b, sep='')

# %%
# no.21
a = input()

for i in range(len(a)):
  print(a[i])

# %%
# no.22
a = input()

print(a[:2], a[2:4], a[4:], sep=" ")

# %%
# no.23
a = input()
print(a.split(":")[1])

# h, m, s = input().split(':')
# print(m)

# %%
# no.24
a, b = input().split()

print(a + b)

# %%
# no.25
a, b = input().split()
c = int(a) + int(b)

print(c)

# %%
# no.26
a = float(input())
b = float(input())

print(a + b)
# %%
# no.27
# 10진 정수 입력받아 16진수 소문자 형태로 출력
a = int(input())

print('%x' % a)

# %%
# no.28
# 10진 정수 입력받아 16진수 대문자 형태로 출력
a = int(input())

print('%X' % a)

# %%
# no.29
# 16진 정수 입력받아 8진수로 출력
a = int(input(), 16)

print('%o' % a)

# %%
# no.30
# 영문자 1개 입력받아 10진수로 변환
a = ord(input()) # 문자 -> 숫자

print(a)

# %%
# no.31
# 정수 입력받아 유니코드 문자로 변환
a = int(input())

print(chr(a)) # 숫자 -> 문자

# %%
# no.32
# 정수 1개 입력받아 부호 바꾸기
n = int(input())

print(-n)

# %%
# no.33
# 문자 1개 입력받아 다음 문자 출력하기
a = ord(input())

print(chr(a + 1))

# %%
# no.34
# 정수 2개 입력받아 차 계산하기
a, b = input().split()
a, b = int(a), int(b)

print(a - b)

# %%
# no.35
a, b = input().split()
c = float(a) * float(b)

print(c)

# %%
# no.36
# 단어 여러 번 출력하기
w, n = input().split()

print(w * int(n))

# %%
# no.37
# 문장 여러 번 출력하기
n = int(input())
s = input()

print(s * n)

# %%
# no.38
# 정수 2개 입력받아 거듭제곱 계산하기
a, b = input().split()

print(int(a) ** int(b))

# %%
# no.39
# 실수 2개 입력받아 거듭제곱 계산하기
f1, f2 = input().split()

print(float(f1) ** float(f2))

# %%
# no.40
# 정수 2개 입력받아 나눈 몫 계산하기
a, b = input().split()

print(int(a) // int(b))

# %%
# no.41
# 정수 2개 입력받아 나눈 나머지 계산하기
a, b = input().split()

print(int(a) % int(b))

# %%
# no.42
# 실수 1개 입력받아 소숫점 이하 자리 변환하기
a = float(input())

print('{:.2f}'.format(a))
print(round(a, 2))

# %%
# no.43
# 실수 2개 입력받아 나눈 결과 계산하기
f1, f2 = input().split()
f3 = float(f1) / float(f2)

print("{:.3f}".format(f3))
print(format(f3, '.3f'))
print('%.3f' % f3)

# %%
# no.44
# 정수 2개 입력받아 자동 계산하기
a, b = input().split()
a = int(a)
b = int(b)

print(a + b)
print(a - b)
print(a * b)
print(a // b)
print(a % b)
print(format(a / b, '.2f'))

# %%
# no.45
# 정수 3개 입력받아 합과 평균 출력하기
a, b, c = input().split()
a = int(a)
b = int(b)
c = int(c)
d = a + b + c
e = d / 3

print('{} {:.2f}'.format(d, e))

# %%
# no.46
# 정수 1개 입력받아 2배 곱해 출력하기
"""
n = 10
print(n<<1)  #10을 2배 한 값인 20 이 출력된다.
print(n>>1)  #10을 반으로 나눈 값인 5 가 출력된다.
print(n<<2)  #10을 4배 한 값인 40 이 출력된다.
print(n>>2)  #10을 반으로 나눈 후 다시 반으로 나눈 값인 2 가 출력된다.

정수 10의 2진수 표현은 ... 1010 이다.
10 << 1 을 계산하면 ... 10100 이 된다 이 값은 10진수로 20이다.
10 >> 1 을 계산하면 ... 101 이 된다. 이 값은 10진수로 5이다.

n = 10 과 같이 키보드로 입력받지 않고 직접 작성해 넣은 코드에서, 숫자로 시작하는 단어(식별자, identifier)는 자동으로 수로 인식된다.  

n = 10 에서 10 은 10진수 정수 값으로 인식된다.
변수 n 에 문자열을 저장하고 싶다면, n = "10" 또는 n = '10'으로 작성해 넣으면 되고,

n = 10.0 으로 작성해 넣으면 자동으로 실수 값으로 저장된다.
n = 0o10 으로 작성해 넣으면 8진수(octal) 10으로 인식되어 10진수 8값이 저장되고,
n = 0xf 나 n = 0XF 으로 작성해 넣으면 16진수(hexadecimal) F로 인식되어 10진수 15값으로 저장된다.
"""
a = int(input())

print(a * 2)
print(a << 1)

# %%
# no.47
# 2의 거듭제곱 배로 곱해 출력하기
a, b = input().split()
a = int(a)
b = int(b)

print(a * (2 ** b))
print(a << b)

# %%
# no.48
# 정수 2개 입력받아 비교하기 1
a, b = input().split()
a = int(a)
b = int(b)

print(a < b)

# %%
# no.49
# 정수 2개 입력받아 비교하기 2
a, b = input().split()
a = int(a)
b = int(b)

print(a == b)

# %%
# no.50
# 정수 2개 입력받아 비교하기 3
a, b = input().split()
a = int(a)
b = int(b)

print(b >= a)
print(a <= b)

# %%
# no.51
# 정수 2개 입력받아 비교하기 4
a, b = input().split()
a = int(a)
b = int(b)

print(a != b)
print(b != a)

# %%
# no.52
# 정수 입력받아 참 거짓 평가하기
a = int(input())

print(bool(a))

# %%
# no.53
# 참 거짓 바꾸기
a = bool(int(input()))

print(not a)

# %%
# no.54
# 둘 다 참일 경우만 참 출력하기
"""
and 예약어는 주어진 두 불 값이 모두 True 일 때에만 True 로 계산하고, 나머지 경우는 False 로 계산한다.
이러한 논리연산을 AND 연산(boolean AND)이라고도 부르고, · 으로 표시하거나 생략하며, 집합 기호 ∩(교집합, intersection)로 표시하기도 한다. 
모두 같은 의미이다.
"""
a, b = input().split()
a = bool(int(a))
b = bool(int(b))

print(a and b)

# %%
# no.55
# 하나라도 참이면 참 출력하기
"""
or 예약어는 주어진 두 불 값 중에서 하나라도 True 이면 True 로 계산하고, 나머지 경우는 False 로 계산한다.
이러한 논리연산을 OR 연산(boolean OR)이라고도 부르고, + 로 표시하거나, 집합 기호 ∪(합집합, union)로 표시하기도 한다.
모두 같은 의미이다.
"""
a, b = input().split()
a = bool(int(a))
b = bool(int(b))

print(a or b)

# %%
# no.56
# 참 / 거짓이 서로 다를 때에만 참 출력하기
"""
참 거짓이 서로 다를 때에만 True 로 계산하는 논리연산을 XOR(exclusive or, 배타적 논리합) 연산이라고도 부른다.
"""
a, b = input().split()
c = bool(int(a))
d = bool(int(b))

print((c and (not d)) or ((not c) and d))

# %%
# no.57
# 참 / 거짓이 서로 같을 때에만 참 출력하기
a, b = input().split()
c = bool(int(a))
d = bool(int(b))

print((not c and not d) or (c and d))

# %%
# no.58
# 둘 다 거짓일 경우만 참 출력하기
a, b = input().split()
c = bool(int(a))
d = bool(int(b))

print(not (c or d))

# %%
# no.59
# 비트 단위로 NOT 하여 출력하기
"""
입력 된 정수를 비트단위로 참/거짓을 바꾼 후 정수로 출력해보자.
비트단위(bitwise)연산자 ~ 를 붙이면 된다.(~ : tilde, 틸드라고 읽는다.)

** 비트단위(bitwise) 연산자는,
~(bitwise not), &(bitwise and), |(bitwise or), ^(bitwise xor),
<<(bitwise left shift), >>(bitwise right shift)
가 있다.

예를 들어 1이 입력되었을 때 저장되는 1을 32비트 2진수로 표현하면
        00000000 00000000 00000000 00000001 이고,
~1은 11111111 11111111 11111111 11111110 가 되는데 이는 -2를 의미한다.

예시
a = 1
print(~a) #-2가 출력된다.

참고
컴퓨터에 저장되는 모든 데이터들은 2진수 형태로 바뀌어 저장된다.
0과 1로만 구성되는 비트단위들로 변환되어 저장되는데,
양의 정수는 2진수 형태로 바뀌어 저장되고, 음의 정수는 "2의 보수 표현"방법으로 저장된다.

양의 정수 5를 32비트로 저장하면, 

5의 2진수 형태인 101이 32비트로 만들어져
00000000 00000000 00000000 00000101
로 저장된다.(공백은 보기 편하도록 임의로 분리)

32비트 형의 정수 0은
00000000 00000000 00000000 00000000

그리고 -1은 0에서 1을 더 빼고 32비트만 표시하는 형태로
11111111 11111111 11111111 11111111 로 저장된다.

-2는 -1에서 1을 더 빼면 된다.
11111111 11111111 11111111 11111110 로 저장된다.

이러한 내용을 간단히 표현하면, 정수 n이라고 할 때,

~n = -n - 1
-n = ~n + 1 과 같은 관계로 표현할 수 있다.
"""
a = int(input())

print(~a)

# %%
# no.60
# 비트 단위로 AND 하여 출력하기
"""
입력된 정수 두 개를 비트단위로 and 연산한 후 그 결과를 정수로 출력해보자.
비트단위(bitwise)연산자 &를 사용하면 된다.(and, ampersand, 앰퍼센드라고 읽는다.)

** 비트단위(bitwise)연산자는,
~(bitwise not), &(bitwise and), |(bitwise or), ^(bitwise xor),
<<(bitwise left shift), >>(bitwise right shift)
가 있다.

예를 들어 3과 5가 입력되었을 때를 살펴보면
3       : 00000000 00000000 00000000 00000011
5       : 00000000 00000000 00000000 00000101
3 & 5 : 00000000 00000000 00000000 00000001
이 된다.

비트단위 and 연산은 두 비트열이 주어졌을 때,
둘 다 1인 부분의 자리만 1로 만들어주는 것과 같다.

이 연산을 이용하면 어떤 비트열의 특정 부분만 모두 0으로도 만들 수 있는데
192.168.0.31   : 11000000.10101000.00000000.00011111
255.255.255.0 : 11111111.11111111.11111111.00000000

두 개의 ip 주소를 & 연산하면
192.168.0.0 :     110000000.10101000.0000000.00000000 을 계산할 수 있다.

실제로 이 계산은 네트워크에 연결되어 있는 두 개의 컴퓨터가 데이터를 주고받기 위해
같은 네트워크에 있는지 아닌지를 판단하는데 사용된다.

이러한 비트단위 연산은 빠른 계산이 필요한 그래픽처리에서
마스크연산(특정 부분을 가리고 출력하는)을 수행하는 데에도 효과적으로 사용된다.

"""

a, b = input().split()
a = int(a)
b = int(b)

print(a & b)

# %%
# no.61
# 비트 단위로 OR 하여 출력하기
"""
입력된 정수 두 개를 비트단위로 or 연산한 후 그 결과를 정수로 출력해보자.
비트단위(bitwise) 연산자 |(or, vertical bar, 버티컬바)를 사용하면 된다.

** | 은 파이프(pipe)연산자라고도 불리는 경우가 있다.

** 비트단위(bitwise) 연산자는,
~(bitwise not), &(bitwise and), |(bitwise or), ^(bitwise xor),
<<(bitwise left shift), >>(bitwise right shift)
가 있다.

예를 들어 3과 5가 입력되었을 때를 살펴보면
3      : 00000000 00000000 00000000 00000011
5      : 00000000 00000000 00000000 00000101
3 | 5 : 00000000 00000000 00000000 00000111
이 된다.

비트단위 or 연산은 둘 중 하나라도 1인 자리를 1로 만들어주는 것과 같다.
"""
a, b = input().split()
a = int(a)
b = int(b)

print(a | b)

# %%
# no.62
# 비트 단위로 XOR 하여 출력하기
"""
입력된 정수 두 개를 비트단위로 xor 연산한 후 그 결과를 정수로 출력해보자.
비트단위(bitwise) 연산자 ^(xor, circumflex/caret, 서컴플렉스/카릿)를 사용하면 된다.

** 주의 ^은 수학식에서 거듭제곱(power)을 나타내는 기호와 모양은 같지만,
C언어에서는 전혀 다른 배타적 논리합(xor, 서로 다를 때 1)의 의미를 가진다.

** 비트단위(bitwise) 연산자는,
~(bitwise not), &(bitwise and), |(bitwise or), ^(bitwise xor),
<<(bitwise left shift), >>(bitwise right shift)
가 있다.

예를 들어 3과 5가 입력되었을 때를 살펴보면
3       : 00000000 00000000 00000000 00000011
5       : 00000000 00000000 00000000 00000101
3 ^ 5 : 00000000 00000000 00000000 00000110
이 된다.
이러한 비트단위 연산은 빠른 계산이 필요한 그래픽처리에서도 효과적으로 사용된다.

구체적으로 설명하자면,
두 장의 이미지가 겹쳐졌을 때 색이 서로 다른 부분만 처리할 수 있다.
배경이 되는 그림과 배경 위에서 움직이는 그림이 있을 때,
두 그림에서 차이만 골라내 배경 위에서 움직이는 그림의 색으로 바꿔주면
전체 그림을 구성하는 모든 점들의 색을 다시 계산해 입히지 않고
보다 효과적으로 그림을 처리할 수 있게 되는 것이다.
비행기 슈팅게임 등을 상상해보면 된다.
"""
a, b = input().split()
a = int(a)
b = int(b)

print(a ^ b)

# %%
# no.63
# 정수 2개 입력받아 큰 값 출력하기 (3항 연산 사용)
"""
3개의 요소로 이루어지는 3항 연산은
"x if C else y" 의 형태로 작성이 된다.
- C : True 또는 False 를 평가할 조건식(conditional expression) 또는 값
- x : C의 평가 결과가 True 일 때 사용할 값
- y : C의 평가 결과가 True 가 아닐 때 사용할 값

조건식 또는 값이 True 이면 x 값이 사용되고, True가 아니면 y 값이 사용되도록 하는 코드이다.

예를 들어
0 if 123>456 else 1
과 같은 표현식의 평가값은 123 > 456 의 비교연산 결과가 False 이므로 1이 된다.
"""
a, b = input().split()
a = int(a)
b = int(b)

print(a if a >= b else b)

# %%
# no.64
# 정수 3개 입력받아 가장 작은 값 출력하기 (3항 연산 사용)
a, b, c = input().split()
a = int(a)
b = int(b)
c = int(c)

print((a if a <= b else b) if ((a if a <= b else b) <= c) else c)

# %%
# no.65
# 정수 3개 입력받아 짝수만 출력하기
l = input().split()

for i in l:
  i = int(i)
  if (i % 2) == 0:
    print(i)

# %%
# no.66
# 정수 3개 입력받아 짝/홀 출력하기
l = input().split()

for i in l:
  i = int(i)
  if (i % 2) == 0:
    print("even")
  else:
    print("odd")
    
# %%
# no.67
# 정수 1개 입력받아 분류하기
a = int(input())

if a < 0:
  if a % 2 == 0:
    print("A")
  else:
    print("B")
else:
  if a % 2 == 0:
    print("C")
  else:
    print("D")
    
# %%
# no.68
# 점수 입력받아 평가 출력하기
a = int(input())

if a >= 90:
  print("A")
elif a >= 70:
  print("B")
elif a >= 40:
  print("C")
else:
  print("D")
  
# %%
# no.69
# 평가 입력받아 다르게 출력하기
a = input()

if a == "A":
  print("best!!!")
elif a == "B":
  print("good!!")
elif a == "C":
  print("run!")
elif a == "D":
  print("slowly~")
else:
  print("what?")
  
# %%
# no.70
# 월 입력 받아 계절 출력하기
a = int(input())
cond = a // 3

if cond == 1:
  print("spring")
elif cond == 2:
  print("summer")
elif cond == 3:
  print("fall")
else:
  print("winter")
  
# %%
# no.71
# 0이 입력될 때까지 무한 출력하기

n = 1
while n!=0 :
  n = int(input())
  if n!=0 :
    print(n)
  
# %%
# no.72
# 정수 1개 입력받아 카운트다운 출력하기1
n = int(input())

while n != 0:
  print(n)
  n -= 1
  
# %%
# no.73
# 정수 1개 입력받아 카운트다운 출력하기2
n = int(input())

while n != 0:
  n -= 1
  print(n)
  
# %%
# no.74
# 문자 1개 입력받아 알파벳 출력하기
st = ord(input())
a = ord('a')

while a <= st:
  print(chr(a), end=' ')
  a += 1
  
# %%
# no.75
# 정수 1개 입력받아 그 수까지 출력하기
n = int(input())
a = 0

while a <= n:
  print(a)
  a += 1
  
# %%
# no.76
# 정수 1개 입력 받아 그 수까지 출력하기
n = int(input())

for i in range(n + 1):
  print(i)
  
# %%
# no.77
# 짝수 합 구하기
n = int(input())

even_n = 0
for i in range(n + 1):
  if i % 2 == 0:
    even_n += i

print(even_n)

# %%
# no.78
# 원하는 문자가 입력될 때까지 반복 출력하기
cond = True
while cond:
  n = input()
  if n != 'q':
    print(n)
  else:
    print(n)
    cond = False
    
while True:
  x = input()
  print(x)
  if x == 'q':
    break
    
# %%
# no.79
# 언제까지 더해야 할까?
"""
1, 2, 3 ... 을 계속 더해 나갈 때,
그 합이 입력한 정수(0 ~ 1000)보다 같거나 작을 때까지만
계속 더하는 프로그램을 작성해보자.
"""
n = int(input())

s = 0
for i in range(n + 1):
  s += i
  if s >= n:
    print(i)
    break
  
##############################
n = int(input())

s = 0
t = 0
while s < n:
  t += 1
  s += t

print(t)
    
# %%
# no.80
# 주사위 2개 던지기
n, m = input().split()
n = int(n)
m = int(m)

for i in range(1, n + 1):
  for j in range(1, m + 1):
    print(i, j)
    
# %%
# no.81
# 16진수 구구단 출력하기
a = int(input(), 16)

for i in range(1, int("F", 16) + 1):
  print(f"{format(a, 'X')}*{format(i, 'X')}={format(a * i, 'X')}")
  i += 1
  
for i in range(1, 16):
  print('%X' %a, '*%X' %i, '=%X' %(a*i), sep='')

for i in range(1, 16):
  print('%X*%X=%X' %(a, i, a * i))

# %%
# no.82
# 3, 6, 9 게임의 왕이 되자
"""
친구들과 함께 3 6 9 게임을 하던 영일이는 잦은 실수 때문에 계속해서 벌칙을 받게 되었다.
3 6 9 게임의 왕이 되기 위한 369 마스터 프로그램을 작성해 보자.

** 3 6 9 게임은?
여러 사람이 순서를 정한 후, 순서대로 수를 부르는 게임이다.
만약 3, 6, 9 가 들어간 수를 자신이 불러야 하는 상황이라면, 수를 부르는 대신 "박수(X)" 를 쳐야 한다.
33과 같이 3,6,9가 두 번 들어간 수 일때, "짝짝"과 같이 박수를 두 번 치는 형태도 있다. 
"""
n = int(input())
for i in range(1, n + 1):
  i = str(i)
  if ('3' in i) or ('6' in i) or ('9' in i):
    print('X', end=' ')
    continue
  print(i, end=' ')

for i in range(1, n + 1):
  if (i % 10 == 3) or (i % 10 == 6) or (i % 10 == 9):
    print('X', end=' ')
  else:
    print(i, end=' ')

# %%
# no.83
# 빛 섞어 색 만들기
r, g, b = input().split()
r = int(r)
g = int(g)
b = int(b)

for i in range(r):
  for j in range(g):
    for k in range(b):
      print(i, j, k)
      
print(r * g * b)

# %%
# no.84
# 소리 파일 저장 용량 계산하기
hbcs = input().split()

size = int(hbcs[0]) * int(hbcs[1]) * int(hbcs[2]) * int(hbcs[3]) / 8 / 1024 / 1024
print(format(size, '.1f'), "MB")

# %%
# no.85
# 그림 파일 저장 용량 계산하기
figure = input().split()

size = int(figure[0]) * int(figure[1]) * int(figure[2]) / 8 / 1024 / 1024
print(format(size, '.2f'), "MB")

# %%
# no.86
"""
1, 2, 3 ... 을 순서대로 계속 더해 합을 만드는데,
그 합이 입력한 정수보다 작을 동안만 계속 더하는 프로그램을 작성해보자.

즉, 1부터 n까지 정수를 하나씩 더해 합을 만드는데,
어디까지 더해야 입력한 수보다 같거나 커지는지 알아보고자 하는 문제이다.

하지만, 이번에는 그 때 까지의 합을 출력해야 한다.

예를 들어, 57을 입력하면
1+2+3+...+8+9+10=55에서 그 다음 수인 11을 더해 66이 될 때,
그 값 66이 출력되어야 한다.
"""
n = int(input())

i = 0
s = 0
while True:
  i += 1
  s += i
  if s >= n:
    print(s)
    break
  
# %%
# no.87
# 3의 배수는 통과
"""
1부터 입력한 정수까지 1씩 증가시켜 출력하는 프로그램을 작성하되,
3의 배수인 경우는 출력하지 않도록 만들어보자.

예를 들면,
1 2 4 5 7 8 10 11 13 14 ...
와 같이 출력하는 것이다.
"""
n = int(input())

for i in range(1, n + 1):
  if i % 3 == 0:
    continue
  print(i, end=" ")
  
# %%
# no.88
# 수 나열하기 1
"""
어떤 규칙에 따라 수를 순서대로 나열한 것을 수열(sequences)이라고 한다.

예를 들어
1 4 7 10 13 16 19 22 25 ... 은
1부터 시작해 이전에 만든 수에 3을 더해 다음 수를 만든 수열이다.
이러한 것을 수학에서는 앞뒤 수들의 차이가 같다고 하여

등차(차이가 같다의 한문 말) 수열이라고 한다. (등차수열 : arithmetic progression/sequence)
수열을 알게 된 영일이는 갑자기 궁금해졌다.

"그럼.... 123번째 나오는 수는 뭘까?"

영일이는 프로그램을 만들어 더 큰 수도 자동으로 계산하고 싶어졌다.

시작 값(a), 등차(d), 몇 번째인지를 나타내는 정수(n)가 입력될 때
n번째 수를 출력하는 프로그램을 만들어보자.
"""
a, d, n = input().split()
a = int(a)
d = int(d)
n = int(n)

s = a
for i in range(n - 1):
  s += d
  
print(s)

# %%
# no.89
# 수 나열하기 2
"""
2 6 18 54 162 486 ... 은
2부터 시작해 이전에 만든 수에 3을 곱해 다음 수를 만든 수열이다.

이러한 것을 수학에서는 앞뒤 수들의 비율이 같다고 하여
등비(비율이 같다의 한문 말) 수열이라고 한다. (등비수열 : geometric progression/sequence)

등비 수열을 알게된 영일이는 갑자기 궁금해졌다.
"그럼.... 13번째 나오는 수는 뭘까?"
영일이는 프로그램을 만들어 더 큰 수도 자동으로 계산하고 싶어졌다.

시작 값(a), 등비(r), 몇 번째인지를 나타내는 정수(n)가 입력될 때
n번째 수를 출력하는 프로그램을 만들어보자.
"""
a, r, n = input().split()
a = int(a)
r = int(r)
n = int(n)

m = a
for i in range(n - 1):
  m *= r

print(m)

# %%
# no.90
# 수 나열하기 3
"""
1 -1 3 -5 11 -21 43 ... 은
1부터 시작해 이전에 만든 수에 -2를 곱한 다음 1을 더해 다음 수를 만든 수열이다.

이런 이상한 수열을 알게 된 영일이는 또 궁금해졌다.
"그럼.... 13번째 나오는 수는 뭘까?"

영일이는 물론 수학을 아주 잘하지만 이런 문제는 본 적이 거의 없었다...
그래서 프로그램을 만들어 더 큰 수도 자동으로 계산하고 싶어졌다.

시작 값(a), 곱할 값(m), 더할 값(d), 몇 번째인지를 나타내는 정수(n)가 입력될 때,
n번째 수를 출력하는 프로그램을 만들어보자.
"""
a, m, d, n = input().split()
a = int(a)
m = int(m)
d = int(d)
n = int(n)

y = a
for i in range(n - 1):
  y *= m
  y += d
  
print(y)

# %%
# no.90
"""
같은 날 동시에 가입한 3명의 사람들이 온라인 채점시스템에 들어와 문제를 푸는 날짜가
매우 규칙적이라고 할 때, 다시 모두 함께 문제를 풀게 되는 그날은 언제일까?

예를 들어 3명이 같은 날 가입/등업하고, 각각 3일마다, 7일마다, 9일마다
한 번씩 들어온다면, 처음 가입하고 63일 만에 다시 3명이 함께 문제를 풀게 된다.
"""
a, b, c = input().split()
a = int(a)
b = int(b)
c = int(c)

d = 1
while (d % a != 0) or (d % b != 0) or (d % c != 0):
  d += 1
  """
  d 나누기 a의 나머지가 0이 아니거나,
  d 나누기 b의 나머지가 0이 아니거나,
  d 나누기 c의 나머지가 0이 아닌동안은 True 루프가 계속 돈다.
  따라서, d 나누기 a, b, c의 나머지 모두가 0일때 False가 된다.
  """
  
print(d)

while True:
  if (d % a == 0) and (d % b == 0) and (d % c == 0):
    print(d)
    break
  d += 1

# %%
# no.91
# 이상한 출석 번호 부르기 1
"""
정보 선생님은 수업을 시작하기 전에 이상한 출석을 부른다.

선생님은 출석부를 보고 번호를 부르는데,
학생들의 얼굴과 이름을 빨리 익히기 위해 번호를 무작위(랜덤)으로 부른다.

그리고 얼굴과 이름이 잘 기억되지 않는 학생들은 번호를 여러 번 불러
이름과 얼굴을 빨리 익히려고 하는 것이다.

출석 번호를 n번 무작위로 불렀을 때, 각 번호(1 ~ 23)가 불린 횟수를 각각 출력해보자.
"""
n = int(input()) # 출석 호명 횟수
a = input().split() # 호명된 학생 번호
n_student = 23 # 전체 학생 수

for i in range(len(a)):
  a[i] = int(a[i])
  
called = [] # 학생들이 호명된 횟수 리스트
for i in range(n_student):
  called.append(0)

for i in range(n):
  called[a[i]-1] += 1

for i in called:
  print(i, end=" ")

# %%
# no.93
# 이상한 출석 번호 부르기 2
"""
정보 선생님은 수업을 시작하기 전에 이상한 출석을 부른다.

학생들의 얼굴과 이름을 빨리 익히기 위해 번호를 무작위(랜덤)으로 부르는데,
영일이는 선생님이 부른 번호들을 기억하고 있다가 거꾸로 불러보는 것을 해보고 싶어졌다.

출석 번호를 n번 무작위로 불렀을 때, 부른 번호를 거꾸로 출력해 보자.
"""
n = int(input())
a = input().split()

for i in range(n-1, -1, -1):
  print(a[i], end=" ")
  
# %%
# no.94
# 이상한 출석 번호 부르기 3
"""
정보 선생님은 오늘도 이상한 출석을 부른다.

영일이는 오늘도 다른 생각을 해보았다.
출석 번호를 다 부르지는 않은 것 같은데... 가장 빠른 번호가 뭐였지?

출석 번호를 n번 무작위로 불렀을 때, 가장 빠른 번호를 출력해 보자.

단, 
첫 번째 번호와 마지막 번호가 몇 번인지는 아무도 모른다.
음수(-) 번호, 0번 번호도 있을 수 있다.
"""
n = int(input())
a = input().split()

for i in range(len(a)):
  a[i] = int(a[i])

a = a[:n]
a.sort()
print(a[0])

####################
min = a[0]
for i in range(n):
  if a[i] < min:
    min = a[i]

print(min)

# %%
# no.95
# 바둑판에 흰 돌 놓기
n = int(input())
locations = []

for _ in range(n):
  a = input().split()
  
  for i in range(len(a)):
    a[i] = int(a[i]) - 1
    
  locations.append(a)
  
n_square = 19
board = []
for i in range(n_square):
  row = []
  board.append(row)
  for _ in range(n_square):
    board[i].append(0)

for location in locations:
  board[location[0]][location[1]] = 1
  
for i in range(n_square):
  for j in range(n_square):
    print(board[i][j], end=' ')
  print()

# %%
# no.96
# 바둑알 십자 뒤집기
"""
부모님을 기다리던 영일이는 검정/흰 색 바둑알을 바둑판에 꽉 채워 깔아 놓고 놀다가...

"십(+)자 뒤집기를 해볼까?"하고 생각했다.

십자 뒤집기는
그 위치에 있는 모든 가로줄 돌의 색을 반대(1->0, 0->1)로 바꾼 후, 
다시 그 위치에 있는 모든 세로줄 돌의 색을 반대로 바꾸는 것이다.
어떤 위치를 골라 집자 뒤집기를 하면, 그 위치를 제외한 가로줄과 세로줄의 색이 모두 반대로 바뀐다.

바둑판(19 * 19)에 흰 돌(1) 또는 검정 돌(0)이 모두 꽉 채워져 놓여있을 때,
n개의 좌표를 입력받아 십(+)자 뒤집기한 결과를 출력하는 프로그램을 작성해보자.
"""
n_board = 19
board = []
for i in range(n_board):
  row = input().split()
  for i in range(len(row)):
    row[i] = int(row[i])
  board.append(row)

n = int(input())
for i in range(n):
  x, y = input().split()
  x = int(x) - 1
  y = int(y) - 1
  for j in range(n_board):
    if board[j][y] == 0:
      board[j][y] = 1
    else:
      board[j][y] = 0
      
    if board[x][j] == 0:
      board[x][j] = 1
    else:
      board[x][j] = 0
      
for i in range(n_board):
  for j in range(n_board):
    print(board[i][j], end=" ")
  print()
  
# %%
# no.97
# 설탕 과자 뽑기
"""
부모님과 함께 놀러간 영일이는
설탕과자(설탕을 녹여 물고기 등의 모양을 만든 것) 뽑기를 보게 되었다.

길이가 다른 몇 개의 막대를 바둑판과 같은 격자판에 놓는데,

막대에 있는 설탕과자 이름 아래에 있는 번호를 뽑으면 설탕과자를 가져가는 게임이었다.
(잉어, 붕어, 용 등 여러 가지가 적혀있다.)

격자판의 세로(h), 가로(w), 막대의 개수(n), 각 막대의 길이(l),
막대를 놓는 방향(d:가로는 0, 세로는 1)과
막대를 놓는 막대의 가장 왼쪽 또는 위쪽의 위치(x, y)가 주어질 때,

격자판을 채운 막대의 모양을 출력하는 프로그램을 만들어보자.
"""
h, w = input().split()
h = int(h)
w = int(w)
board = []
for i in range(h):
  row = []
  for j in range(w):
    row.append(0)
  board.append(row)
  
n = int(input())
for i in range(n):
  l, d, x, y = input().split()
  for j in range(int(l)):
    if int(d) == 0:
      board[int(x)-1][int(y)-1+j] = 1
    else:
      board[int(x)-1+j][int(y)-1] = 1
      
for i in range(h):
  for j in range(w):
    print(board[i][j], end=" ")
  print()
  
# %%
# no.99
# 성실한 개미
"""
영일이는 생명과학에 관심이 생겨 왕개미를 연구하고 있었다.

왕개미를 유심히 살펴보던 중 특별히 성실해 보이는 개미가 있었는데,
그 개미는 개미굴에서 나와 먹이까지 가장 빠른 길로 이동하는 것이었다.

개미는 오른쪽으로 움직이다가 벽을 만나면 아래쪽으로 움직여 가장 빠른 길로 움직였다.
(오른쪽에 길이 나타나면 다시 오른쪽으로 움직인다.)

이에 호기심이 생긴 영일이는 그 개미를 미로 상자에 넣고 살펴보기 시작하였다.

미로 상자에 넣은 개미는 먹이를 찾았거나, 더 이상 움직일 수 없을 때까지
오른쪽 또는 아래쪽으로만 움직였다.

미로 상자의 구조가 0(갈 수 있는 곳), 1(벽 또는 장애물)로 주어지고,
먹이가 2로 주어질 때, 성실한 개미의 이동 경로를 예상해보자.

단, 맨 아래의 가장 오른쪽에 도착한 경우, 더 이상 움직일 수 없는 경우, 먹이를 찾은 경우에는
더이상 이동하지 않고 그 곳에 머무른다고 가정한다.

미로 상자의 테두리는 모두 벽으로 되어 있으며,
개미집은 반드시 (2, 2)에 존재하기 때문에 개미는 (2, 2)에서 출발한다.
"""
n_maze = 10
maze = []
for i in range(n_maze):
  row = []
  line = input().split()
  for j in range(len(line)):
    line[j] = int(line[j])
    row.append(line[j])
  maze.append(row)
  
move = True
x, y = 1, 1
while move:
  maze[x][y] = 9
  if maze[x][y+1] == 0:
    y += 1
    maze[x][y] = 9
    
  elif (maze[x][y+1] == 1) and (maze[x+1][y] == 0):
    x += 1
    maze[x][y] = 9
    
  elif (maze[x][y+1] == 1) and (maze[x+1][y] == 1):
    move = False
    
  elif maze[x+1][y] == 2:
    x += 1
    maze[x][y] = 9
    move = False
    
  elif maze[x][y+1] == 2:
    y += 1
    maze[x][y] = 9
    move = False
    
for i in range(len(maze)):
  for j in range(len(maze)):
    print(maze[i][j], end=" ")
  print()
  
# %%
