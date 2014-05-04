class Task_RNA < Task
	def task(input)
		input.split('').each do |char|
		    char = 'U' if char == 'T'
			print char
		end

		puts
	end
end