function to_rna(dna)
    rna = ""
    for n = 1:length(dna)
        if dna[n] == 'A'
            newrna = 'U'
        elseif dna[n] == 'C'
            newrna = 'G'
        elseif dna[n] == 'G'
            newrna = 'C'
        elseif dna[n] == 'T'
            newrna = 'A'
        else
            throw(ErrorException("Input dna has invalid nucleotide."))
        end
        rna = "$rna$newrna"
    end
    rna
end

