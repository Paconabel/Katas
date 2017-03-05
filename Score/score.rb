# Greed is a dice game where you roll up to five dice to accumulate
# points.  
#
# The following "score" function will be used to calculate the
# score of a single roll of the dice.
#
# A greed roll is scored as follows:
#
# 1. A set of three ones is 1000 points
#
# 2. A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# 3. A one (that is not part of a set of three) is worth 100 points.
#
# 4. A five (that is not part of a set of three) is worth 50 points.
#
# 5. Everything else is worth 0 points.
#


class Dice

  MAX = 5

  def initialize(roll)
    raise 'Too many rolls' if roll.length > MAX

    @roll = roll
  end

  def has_triple_one?
    has_triple_of?(1)
  end

  def has_triple_of?(number)
    @roll.count(number) == 3
  end

end

TRIPLE_ONE_SCORE = 1000

def score(roll)
  dice = Dice.new(roll)

  score = calculate_triples(dice)

  if dice.has_triple_one?
	 score = TRIPLE_ONE_SCORE
  end

  score
end

def calculate_triples(dice)
  score = 0

  (1..6).each do |number|
    if dice.has_triple_of?(number)
      score = number * 100 
    end
  end

  score
end

# Examples:
#
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points
#
# More scoring examples are given in the tests below:
#
# Your goal is to write the score method.
