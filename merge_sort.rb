def sorting(arr)
  if arr.length <= 1
  	arr
  else
  	mid = (arr.length / 2).floor
  	arr1 = sorting(arr[0..mid - 1])
  	arr2 = sorting(arr[mid..arr.length])
  	merge(arr1, arr2)
  end
end

def merge(arr1, arr2)
  if arr1.empty?
  	arr2
  elsif arr2.empty?
  	arr1
  elsif arr1.first < arr2.first
  	[arr1.first] + merge(arr1[1..arr1.length], arr2)
  else
  	[arr2.first] + merge(arr2[1..arr2.length], arr1)
  end 		
end