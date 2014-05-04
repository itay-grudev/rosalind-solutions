class Task_HAMM < Task
	def task(input)
		def h2(a, b) # Hamming distance of strings
		  count = 0
		  a.length.times do |i|
		  	count += 1 unless a[i] == b[i]
		  end 
		  count
		end

		str1, str2 = input.split("\n")

		puts h2(str1, str2)
	end
end