def binary_search(array, target, start = 0, finish = array.length)
	mid_index = (finish + start)/2
	mid_ele = array[mid_index]

	if start >= finish 
		return nil
	end

	if mid_ele == target
		return mid_index
	elsif mid_ele > target
		return binary_search(array, target, start, mid_index)
	elsif mid_ele < target
		return binary_search(array, target, mid_index+1, finish)
	end

end

def binary_search_loop(array, target, start = 0, finish = array.length)
	while start < finish
		mid_index = (finish + start)/2
		mid_ele = array[mid_index]

		if start >= finish 
			return nil
		end

		if mid_ele == target
			return mid_index
		elsif mid_ele > target
			finish = mid_index
		elsif mid_ele < target
			start = mid_index + 1
		end
	end
end