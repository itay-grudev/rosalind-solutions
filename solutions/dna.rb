class Task_DNA < Task
	def task(input)
		count = { A: 0, C: 0, G: 0, T: 0  }

		input.split('').each do |i|
			count[i.to_sym] += 1
		end

		count.each do |k, num|
			print num.to_s + ' '
		end

		puts
	end
end