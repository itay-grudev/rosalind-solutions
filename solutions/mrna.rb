class Task_MRNA < Task
	def task(input)
		factor = 1
		input.split('').each do |i|
			factor *= Constants::MRNA2RNA[i.to_sym].length
		end

		factor *= Constants::MRNA2RNA[:Stop].length

		puts factor % 1000000
	end
end