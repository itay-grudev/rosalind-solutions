class Task_GC < Task
	def task(input)
		index = 0
		max_header = ''
		max_density = 0
		count = 0
		length = 0
		header = ''
		input.split("\n").each do |line|
			if line[0] == '>' # header
				if index > 1
					density = count.to_f / length
					if density > max_density
						max_density = density
						max_header = header
					end
				end
				header = line
				count = 0
				length = 0
			else # content
				length += line.length
				line.split('').each do |i|
					count += 1 if i == 'C' or i == 'G'
				end
			end
			index += 1
		end

		density = count.to_f / length
		if density > max_density
			max_density = density
			max_header = header
		end

		puts max_header[1..-1]
		puts max_density * 100
	end
end