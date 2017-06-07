def fibs(n)
	#made special cases for users inputting 1 or 2
	if n == 1
		ary = [0]
		print "#{ary}\n"
	elsif n == 2
		ary = [0,1]
		print "#{ary}\n"
	#here is the real solution:
	elsif n > 2
		ary = [0,1]
		until ary.length == n
			ary << ary[-1] + ary[-2] #always grabs the final two numbers from the array
			print "#{ary}\n"
		end
	end
	return ary
end

fibs(8)
fibs(1)
fibs(2)
fibs(3)

def fibs_rec(n, ans = [0,1])
	ans = [0] if n == 1 #ensuring a correct output if n == 1
	ans.length < n ? (fibs_rec(n, ans << ans[-1] + ans[-2])) : (print "#{ans}\n" ; return ans)
end


fibs_rec(1)
fibs_rec(2)
fibs_rec(8)