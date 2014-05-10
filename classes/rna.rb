class RNA
	def self.from_dna(dna)
		return dna.gsub('T', 'U')
	end
end