#I have put in prints and notes so that you can try to follow the algorithm. The i and prints are only there to help 
# the reader track what 'level' of the program they are in when reading the prints
# All of the prints and references to i can safely be removed without affecting how the program works
# This is the same method used by FrankPeelen (github) from the odin project. I hope I have explained it thoroughly
# ms = 'merge_sort'

# ms(9,8,7,6,5,4,3)
# 	a1 = ms(9,8,7)
# 		a2 = ms(9) yields 9 (length of 1) which is the first value to get printed
# 		b2 = ms(8,7)
# 			a3 = ms(8) yields 8 which is the second value to get printed
# 			b3 = ms(7) yields 7 which is the third value to get printed
# 			a3 and b3 are sorted, yielding [7,8]
# 		a2 and b2 ([9] and [7,8]) are then sorted, yielding [7,8,9]
# 	b1 = ms(6,5,4,3)
# 		a2 (now a different a2, as 'i' counts up from b2) = ms(6,5)
# 			a3 = ms(6) yields 6, printed
# 			b3 = ms(5) yields 5, printed
# 			a3 and b3 are sorted, yielding [5,6]
# 		b2 = ms(4,3)
# 			a3 = ms(4) yields 4, printed
# 			b3 = ms(3) yields 3, printed
# 			a3 and b3 are sorted, yielding [3,4]
# 		a2 and b2 ([5,6] and [3,4]) are sorted, yielding [3,4,5,6]
# 	a1 and b1 ([7,8,9] and [3,4,5,6]) are sorted, yielding [3,4,5,6,7,8,9]

def merge_sort(array, i= 0)
	i += 1
	return array if array.length == 1
		print "array#{i}: #{array}\n"
		a = merge_sort(array.slice!(0..array.length/2-1), i)
		print "a#{i}: #{a}\n"		
		b = merge_sort(array, i)
		print "b#{i}: #{b}\n"
		sorted = []
	until a.first.nil? || b.first.nil?
		print "sorting: a#{i}: #{a}, b#{i}: #{b}\n"
		sorted << (a.first < b.first ? a.slice!(0) : b.slice!(0))
		print "sorted step: #{sorted}\n"
	end
	until a.first.nil?
		sorted << a.slice!(0)
	end
	until b.first.nil?
		sorted << b.slice!(0)
	end
	print "sorted: #{sorted}, i: #{i}\n"
	sorted
end

print merge_sort([9,8,7,6,5,4,3])
		

