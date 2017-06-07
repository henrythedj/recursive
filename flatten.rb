def flatten(ary, n = 0)
	print ary
	puts ""
	return ary if (n - 1) >= ary.length
	if ary[n].class == Array
		ary.insert(n, ary[n].shift)
		ary.delete_at(n + 1) if ary[n + 1] == []
		flatten(ary, n)
	else
		flatten(ary, n + 1)
	end
end

my_array = [[1,2,3],[3,3,4,4]]

flatten(my_array)