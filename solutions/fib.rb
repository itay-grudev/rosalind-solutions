class Task_FIB < Task
	def task(input)
		n, k = input.split(' ').map { |v| v.to_i }

		an = [1, 1]
		if n < 3
			return 1
		else
			for	i in 3 .. n
				an[0] = an[0] + an[1] * k
				an[1] = an[0] - an[1] * k
			end
		end

		puts an[0]
	end
end