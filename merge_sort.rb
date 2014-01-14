def merge_sort(array)
return array if array.length == 1
mid = array.length/2
left = array[0...mid]
right = array[mid...array.length]

left = merge_sort(left)
right = merge_sort(right)
return merge(left, right)
end


def merge(left, right)
	out = []

end