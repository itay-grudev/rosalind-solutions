class Task_PRTM < Task
	def task(input)

		mass = 0

		input.split('').each do |amino_acid|

			mass += Constants::AMINO_ACID_MASS[amino_acid.to_sym]

		end

		puts mass

	end
end