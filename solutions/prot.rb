class Task_PROT < Task
	def task(input)
		index = 0
		mRNA = ''
		(input.length / 3).times do |i|
			codone = input[index...index+3]
			acid = Constants::RNA2mRNA[codone]
			if acid == :Stop
				break
			end
			mRNA += acid.to_s
			index += 3
		end

		mRNA
	end
end