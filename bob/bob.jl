function bob(stimulus)
	stimulus = stimulus
	stimulus = filter(ch -> !isspace(ch), stimulus)
	stimulus = filter(ch -> !isnumeric(ch), stimulus)

	function num_alphabetical(str::String)
		n = 0
		for ch ∈ str
			if 'a' ≤ ch ≤ 'z'
				n += 1
			elseif 'A' ≤ ch ≤ 'Z'
				n += 1
			end
		end
		return n
	end

	if length(stimulus) == 0
		return "Fine. Be that way!"
	elseif stimulus[end] == '?'
		if stimulus == uppercase(stimulus) && num_alphabetical(stimulus) > 0
			return "Calm down, I know what I'm doing!"
		else
			return "Sure."
		end
	elseif stimulus == uppercase(stimulus) && num_alphabetical(stimulus) > 0
		return "Whoa, chill out!"
	else
		return "Whatever."
	end
end