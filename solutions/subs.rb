class Task_SUBS < Task
	def task(input)

		str, substr = input.split("\n")

		for i in 0 .. str.length

			print (i+1).to_s + ' ' if str[i...i+substr.length] == substr

		end
	end
end