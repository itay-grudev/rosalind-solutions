class Task_GRPH < Task

  def task(input)
    fasta = Fasta::from_string(input)

    edges = { }

    # Go through any possible combination of strings
    fasta.each do |s|
      fasta.each do |t|
        next if s == t # Skip loops

        if s[-3..-1] == t[0..2]
          edges[s.description] = [] unless edges.include? s.description
          edges[s.description] << t.description
        end
      end
    end

    output = ''

    edges.each do |edge, verticies|
      verticies.each do |vertex|
        output += "#{edge} #{vertex}\n"
      end
    end

    output
  end

end
