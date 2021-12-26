import requests
from bs4 import BeautifulSoup


url = "https://comic.naver.com/index"
res = requests.get(url)
res.raise_for_status()

soup = BeautifulSoup(res.text, "lxml") # 내가 가져온 html 문서를 lxml parser를 통해 BeautifulSoup 객채로 만듦
# print(soup.title)
# print(soup.title.get_text())
# print(soup.a) # soup 객체에서 처음 발견되는 a element 출력
# print(soup.a.attrs) # a element의 속성 정보를 출력
# print(soup.a["href"]) # a element의 속성 '값' 정보를 출력

# print(soup.find("a", attrs={"class":"Nbtn_upload"})) # class = Nbtn_upload인 a element를 찾아줘
# print(soup.find(attrs={"class":"Nbtn_upload"})) # class = Nbtn_upload인 어떤 element를 찾아줘

# print(soup.find("li", attrs={"class":"rank01"}))
# rank1 = soup.find("li", attrs={"class":"rank01"})
# print(rank1.a.get_text())
# rank2 = rank1.next_sibling.next_sibling # 기준이 되는 element의 다음 형제 element를 출력. 개행이 되어 있다면 2번 입력.
# # print(rank2.a.get_text())
# rank3 = rank2.next_sibling.next_sibling
# print(rank3.a.get_text())
# rank2 = rank3.previous_sibling.previous_sibling # 기준이 되는 element의 이전 형제 element를 출력. 개행이 되어 있다면 2번 입력.
# print(rank2.a.get_text())

# print(rank1.parent) # 기준이 되는 element의 부모 element의 내용을 출력

# rank2 = rank1.find_next_sibling("li") # 중간에 개행이 있건 없건 다음 형제 element를 출력
# print(rank2.a.get_text())

# rank3 = rank2.find_next_sibling("li")
# print(rank3.a.get_text())

# rank2 = rank3.find_previous_sibling("li")
# print(rank2.a.get_text())

# print(rank1.find_next_siblings("li")) # 다음 형제 element들을 한꺼번에 출력

webtoon = soup.find("a", text="캐슬-94화") # text의 내용이 부합하는 태그를 찾아서 출력
print(webtoon)