class Fasta
	class Sequence
		attr_accessor :description, :dna_string

		def initialize
			@description = ''
			@dna_string = ''
		end

		def to_s(line_length = 60)
			'>' + @description + "\n" + @dna_string.scan(/.{#{line_length}}|.+/).join("\n")
		end

	end

	def self.from_string(input)
		sequence = nil		
		fasta = []

		lines = input.split("\n")

		lines.each_index do |i|
			unless lines[i][0] == '>' # content line
				sequence.dna_string += lines[i]
			end

			if lines[i][0] == '>' or i + 1 == lines.length  # description line or last line
				fasta << sequence if i > 0
				sequence = Sequence.new
				sequence.description = lines[i][1..-1]
			end
		end

		fasta # An array of Fasta::Sequence :D
	end
end