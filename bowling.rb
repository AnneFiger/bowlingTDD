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
				return sum_two_digits(rolls)
			end
		elsif rolls.length > 2
			frames = rolls.split(' ')
			score = 0
			frames.each do |frame|
				score += sum_two_digits(frame)
			end
			return score
		else
			return rolls.to_i
		end
	end
		def sum_two_digits(frame)
			frame.split('').map(&:to_i).sum
		end	
end