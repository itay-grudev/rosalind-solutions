class Task_FIBD < Task
	def task(input)
		n, m = input.split(' ').map { |v| v.to_i }

		an = [1, 1]
		am = [1, 1, 1]

		if n > 2
			for i in 3 .. n do
				an[0] = an[0] + an[1]
				an[1] = an[0] - an[1]

				if i > m
					an[0] -= am.shift
				end

				am << an[0]
			end
		end

		puts an[0]
	end
end