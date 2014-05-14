class Task_PERM < Task
	def task(input)
		algorithm = :alg # Should be either :alg or :lazy

		output = ''
		
		n = input.to_i
		output += n.fact.to_s + "\n"
		remaining = []

		# Populate the remaining array
		n.times { |i| remaining << i + 1 }

		# The algorithmic way
		if algorithm == :alg
			stack = []

			# End stack for comparison of last permutation
			end_stack = remaining.sort.reverse

			index = 0
			loop do
				remaining.sort!
				if index == n
					output += stack.join(' ') + "\n"
					break if stack == end_stack
					remaining.push(stack.pop)
					index -= 2
				else
					unless stack[index].nil?
						if remaining.last < stack[index]
							remaining.push(stack.pop)
							index -= 2 # by default we always add one so this is += 1
						else
							nv = nil
							remaining.each_index do |i|
								if remaining[i] > stack[index]
									nv = remaining[i]
									remaining.delete_at i
									break
								end
							end
							remaining.push(stack[index])
							stack[index] = nv
						end
					else
						stack.push(remaining.shift)
					end
					index += 1
				end
			end

			return output[0..-2]
		
		# The lazy way
		elsif algorithm == :lazy

			remaining.permutation.to_a.each do |v|
				output += v.join.to_s + "\n"
			end

			return output
		end
	end
end