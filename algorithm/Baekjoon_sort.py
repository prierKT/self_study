# %%
"""
문제
N개의 수가 주어졌을 때, 이를 오름차순으로 정렬하는 프로그램을 작성하시오.

입력
첫째 줄에 수의 개수 N(1 ≤ N ≤ 1,000)이 주어진다. 둘째 줄부터 N개의 줄에는 수 주어진다.

이 수는 절댓값이 1,000보다 작거나 같은 정수이다. 수는 중복되지 않는다.

출력
첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.
"""
# Insertion Sort
l = []
n = int(input())

for i in range(n):
  m = int(input())
  l.append(m)
  j = i
  while j > 0 and l[j] < l[j-1]:
    l[j-1], l[j] = l[j], l[j-1]
    j -= 1
  
for i in l:
  print(i)
  
# %%
"""
문제
N개의 수가 주어졌을 때, 이를 오름차순으로 정렬하는 프로그램을 작성하시오.

입력
첫째 줄에 수의 개수 N(1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄부터 N개의 줄에는 수가 주어진다.

이 수는 절댓값이 1,000,000보다 작거나 같은 정수이다. 수는 중복되지 않는다.

출력
첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.
"""
# Merge Sort
def merge_sort(arr):
  def sort(left, right):
    if right - left < 2:
      return
    
    mid = (left + right) // 2
    sort(left, mid)
    sort(mid, right)
    merge(left, mid, right)
    
  def merge(left, mid, right):
    lst = []
    l, m = left, mid
    
    while l < mid and m < right:
      if arr[l] < arr[m]:
        lst.append(arr[l])
        l += 1
      else:
        lst.append(arr[m])
        m += 1
        
    while l < mid:
      lst.append(arr[l])
      l += 1
    while m < right:
      lst.append(arr[m])
      m += 1
      
    for i in range(left, right):
      arr[i] = lst[i-left]
      
  return sort(0, len(arr))

# Quick Sort
def quick_sort(arr):
  if len(arr) < 2:
    return arr
  
  pivot = arr[len(arr)-1]
  left, mid, right = [], [], []
  
  for i in range(len(arr)-1):
    if arr[i] < pivot:
      left.append(arr[i])
    elif arr[i] > pivot:
      right.append(arr[i])
    else:
      mid.append(arr[i])
  mid.append(pivot)
  
  return quick_sort(left) + mid + quick_sort(right)

arr = []
n = int(input())
for _ in range(n):
  e = int(input())
  arr.append(e)
  
sorted_arr = quick_sort(arr)
for i in sorted_arr:
  print(i)
  
