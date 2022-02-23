class Bowling

	def score(rolls)
		if rolls.nil?
		    return nil
		elsif rolls == ''
			return 0
		elsif rolls == 'X'
			return 10

		elsif rolls.length == 2
		    if rolls[1] == '/'
				return 10
			else 
				digits = rolls.split('')
				score = digits.map(&:to_i).sum
				return score 
			end
		elsif rolls.length > 2
			frames = rolls.split(' ')
			score = 0
			frames.each do |frame|
				score += frame.split('').map(&:to_i).sum
			end
			return score
		else
			return rolls.to_i
		end
	end

end