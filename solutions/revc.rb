class Task_REVC < Task
	def task(input)
		
		DNA::complement(input).reverse

		reverse = ''

		input.split('').each do |char|
			reverse += Constants::DNA_COMPLEMENT[char.to_sym].to_s
		end

		puts reverse.reverse!
	end
end