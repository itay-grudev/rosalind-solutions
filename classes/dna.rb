class DNA
	def self.from_rna(rna)
		return rna.gsub('U', 'T')
	end

	def self.complement(dna)
		dna.split('').map { |c| Constants::DNA_COMPLEMENT[c.to_sym].to_s }.join
	end
end