class Bowling

	def score(rolls)
		if rolls.nil? 
		    return nil
		elsif rolls == ''
			return 0
		elsif rolls == 'X'
			return 10

		elsif rolls.length == 2
			digits = rolls.split('')
			score = digits.map(&:to_i).sum
			return score
		else
			return rolls.to_i
		end
	end

end