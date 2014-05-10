require_relative 'prot'

class Task_SPLC < Task
	def task(input)
		fasta = Fasta::from_string(input)

		dna = fasta[0]

		introns = fasta[1..-1]

		introns.each do |intron|
			dna.dna_string.gsub!(intron.dna_string, '')
		end
		
		Task_PROT.new.task( RNA::from_dna(dna.dna_string) )

	end
end