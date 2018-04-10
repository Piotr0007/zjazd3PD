def bubble_sort(list)
	bubble_sort_by(list) {|a,b| a-b}
end

def bubble_sort_by(list)
	sorted = false
	until sorted
		sorted = true
		list.each_with_index do |value, index|
			if list[index+1] && yield(list[index], list[index+1]) > 0
				list[index], list[index+1] = list[index+1], list[index]
				sorted = false
			end
		end
	end
	return list
end
p bubble_sort([2,3,4,100, 45,5,63,7,8,900,0])