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
end
