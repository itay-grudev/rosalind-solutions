class Task_IPRB < Task
	def task(input)
		def c(m)
			m * (m - 1) / 2
		end

		k, m, n = input.split(' ').map { |i| i.to_i } 

		total = c(k + m + n)

		dominant = []

		dominant << c(k)
		dominant << c(k + m) - c(k) - c(m)
		dominant << c(k + n) - c(k) - c(n)
		dominant << c(m) * 3.to_f / 4
		dominant << ( c(m + n) - c(m) - c(n) ).to_f / 2

		p dominant
		puts total
		puts dominant.inject{|sum,x| sum + x }.to_f / total
	end
end