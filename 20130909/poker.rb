# encoding: UTF-8
class Poker

  attr_accessor :pokerArray

    SUIT = ['$','%','^','&']
    NUMBERS = (1..10).to_a << 'J' << 'Q' << 'K'

  def initialize
    index = 0
    @shuffled = false
    @pokerArray = Array.new(52)
    @amountOfSpade = 0
    @amountOfHeart = 0
    @amountOfDiamond = 0
    @amountOfClub = 0

    for suit in SUIT do
      for number in NUMBERS do
        @pokerArray[index] = suit + number
        index += 1
      end
    end
    puts 'this is initial'
    p @pokerArray
  end

  def amountOfSpade
    for suitNumber in @pokerArray
      if suitNumber.include?"$"
        @amountOfSpade += 1
      end
    end

    @amountOfSpade
  end

  def amountOfHeart
    for suitNumber in @pokerArray
      if suitNumber.include?"%"
        @amountOfHeart += 1
      end
    end

    @amountOfHeart
  end

  def amountOfDiamond
    for suitNumber in @pokerArray
      if suitNumber.include?"^"
        @amountOfDiamond += 1
      end
    end

    @amountOfDiamond
  end

  def amountOfClub
    for suitNumber in @pokerArray
      if suitNumber.include?"&"
        @amountOfClub += 1
      end
    end

    @amountOfClub
  end

  def amountOfTotal
    @amountOfTotal = @pokerArray.size
    @amountOfTotal
  end

  def shuffle
    index = self.amountOfTotal - 1
    while index > 1 do
      exchangeFrom = rand(index);
      index -= 1
      exchangeTo = rand(index);
      index -= 1
       deliver = @pokerArray[exchangeFrom]
       @pokerArray[exchangeFrom] = @pokerArray[exchangeTo]
       @pokerArray[exchangeTo] = deliver
    end
    @shuffled = true
    puts 'this is after shuffle'
    p @pokerArray
  end

  def deal
    turn = 1
    a = [],b = [],c = [],d = []
    for suitNumber in @pokerArray
      a.push(suitNumber) if turn%4 == 1
      b.push(suitNumber) if turn%4 == 2
      c.push(suitNumber) if turn%4 == 3
      d.push(suitNumber) if turn%4 == 0
      turn += 1
    end
    puts 'this is after deal'
    p a,b,c,d
  end

  def shuffled?
    @shuffled
  end
end
