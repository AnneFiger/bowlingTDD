require_relative '../bowling'

describe 'bowling score' do
	it 'returns nil if given nil' do
		bowling = Bowling.new
		expect(bowling.score(nil)).to be_nil
	end

	it 'returns 0 if given no rolls' do
		bowling = Bowling.new
		expect(bowling.score("")).to be_zero
	end

	it 'returns 3 if given "3"' do
		bowling = Bowling.new
		expect(bowling.score("3")).to eq(3)
	end

	it 'returns 10 if given "X"' do
		bowling = Bowling.new
		expect(bowling.score("X")).to eq(10)
	end

	it 'returns 4 if given "13"' do
		bowling = Bowling.new
		expect(bowling.score("13")).to eq(4)
	end

	it 'returns 8 if given "35"' do
		bowling = Bowling.new
		expect(bowling.score("35")).to eq(8)
	end

	it 'returns 10 if given "4/"' do
		bowling = Bowling.new
		expect(bowling.score("4/")).to eq(10)
	end


	it 'returns 14 if given "34 34"' do
		bowling = Bowling.new
		expect(bowling.score("34 34")).to eq(14)
	end
end
