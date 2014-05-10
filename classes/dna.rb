class DNA
	def self.from_rna(rna)
		return rna.gsub('U', 'T')
	end
end