class Task_IEV < Task
	def task(input)

		count = input.split(' ').map { |v|  v.to_i }

		puts (count[0] + count[1] + count[2] + count[3].to_f * 3 / 4 + count[4].to_f / 2) * 2

	end
end