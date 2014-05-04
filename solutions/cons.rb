class Task_CONS < Task
	def task(input)

		profile = { A: [], C: [], G: [], T: [] }

		length = 0
		index = 0

		input.split("\n").each do |line|
			if line[0] == '>' # header
				index = 0
			else
				for i in 0 ... line.length
					if profile[line[i].to_sym][index + i].nil?
						profile[line[i].to_sym][index + i] = 1
					else
						profile[line[i].to_sym][index + i] += 1
					end
				end
				index += line.length
				length = index  if index > length
			end
		end

		consensus = ''

		for i in 0 ... length
			max_letter = nil
			max_count = 0
			profile.each do |k, v|
				v[i] = 0 if v[i].nil?
				if v[i] > max_count
					max_count = v[i]
					max_letter = k
				end
			end

			consensus += max_letter.to_s
		end
		puts consensus

		profile.each do |k, v|
			print k.to_s + ':'
			for i in 0 ... length
				v[i] = 0 if v[i].nil?
				print ' ' + v[i].to_s
			end
			puts
		end

	end
end