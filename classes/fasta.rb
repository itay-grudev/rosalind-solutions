require 'forwardable'

class Fasta
  extend Forwardable
  include Enumerable
  def_delegators :@sequences, :size, :length, :each, :<<, :[], :first, :last

  class InvalidSequenceAssignment < Exception; end

	class Sequence < String
		attr_accessor :description

		def initialize
			@description = ''
		end

    def dna_string
      self
    end

    def dna_string=(value)
      replace value
    end

		def to_s(line_length = 60)
			'>' + @description + "\n" + @dna_string.scan(/.{#{line_length}}|.+/).join("\n")
		end

	end

	def self.from_string(input)
		sequence = nil
		fasta = Fasta.new

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

    fasta
	end

  def []=(index, value)
    if value.is_a? Fasta::Sequence
      return @sequences[index] = value
    else
      raise Fasta::InvalidSequenceAssignment
    end
  end

  def initialize
    @sequences = []
  end

  def to_s(line_length = 60)
    @sequences.map { |s| s.to_s(line_length) }.join("\n")
  end
end
