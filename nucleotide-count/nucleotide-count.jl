"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    Ainds = findall(v -> v == 'A', strand)
    Cinds = findall(v -> v == 'C', strand)
    Ginds = findall(v -> v == 'G', strand)
    Tinds = findall(v -> v == 'T', strand)
    if sum(Ainds) + sum(Cinds) + sum(Ginds) + sum(Tinds) != sum(1:length(strand)) 
        throw(DomainError(nothing, "Strand contains invalid nucleotides"))
    end
    Dict('A' => length(Ainds),
    'C' => length(Cinds),
    'G' => length(Ginds),
    'T' => length(Tinds))
end
