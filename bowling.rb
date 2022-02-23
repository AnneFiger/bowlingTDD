class Bowling
	def score(rolls)
		if rolls.nil? 
		    return nil
		elsif rolls == ''
			return 0
		else
			return rolls.to_i
		end
	end
end