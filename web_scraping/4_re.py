import re

"""
. : 하나의 문자를 의미 [예: (ca.e) > care, cafe, case (o) | caffe (x)]
^ : 문자열의 시작 [예: (^de) > desk, destination (o) | fade (x)]
$ : 문자열의 끝 [예: (se$) > case, base (o) | face (x)]
"""

# ca?e
p = re.compile("ca.e") # p 는 pattern을 의미

def print_match(m):  
  if m:
    print("m.group() : ", m.group()) # 일치하는 문자열 반환
    print("m.string : ", m.string) # 입력받은 문자열 반환
    print("m.start() : ", m.start()) # 일치하는 문자열의 시작 index를 반환
    print("m.end() : ", m.end()) # 일치하는 문자열의 끝 index를 반환
    print("m.span() : ", m.span()) # 일치하는 문자열의 시작과 끝의 index를 반환
  else:
    print("매칭이 되지 않았습니다.")
    

m1 = p.match("careless") # match: 주어진 문자열의 처음이 매칭되는지를 확인하는 메소드. 매치가 되지 않으면 에러가 발생
print_match(m1)

m2 = p.search("good care") # search: 주어진 문자열 중에 일치하는게 있는지 확인하는 메소드
print_match(m2)

lst = p.findall("care cafe") # 일치하는 모든 것을 "리스트" 로 반환하는 메소드
print(lst)

"""
1. re.compile("원하는 형태")
2. m = p.match("비교할 문자열")
3. m = p.search("비교할 문자열")
4. lst = p.findall("비교할 문자열")
"""