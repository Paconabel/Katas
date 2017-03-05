require_relative '../score.rb'

describe 'Scoring project' do

  it 'receives a max of 5 numbers' do
    too_big_dice = [1,2,3,4,5,6]

    expect { score(too_big_dice) }.to raise_error StandardError
  end

  it 'score is 1000 when there is a set of 3 ones' do
    three_ones = [1,1,4,5,1]

    expect(score(three_ones)).to eq(1000)
  end

  it 'A set of three numbers (other than ones) is worth 100 times the number.' do
    dice = [2,1,2,2]

    expect(score(dice)).to be (200)
  end

end
  