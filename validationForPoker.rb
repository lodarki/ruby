require_relative 'poker'

describe Poker do
  before do
    @poker = Poker.new
  end  

  describe "Validation check before shuffle" do
    
    it "Pokers must be 52 pieces of card before shuffle" do
      @poker.amountOfTotal.should == 52
    end 
    
    it "Every suit Of Poker include 13 pieces of card before shuffle" do
      @poker.amountOfSpade.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card before shuffle" do
      @poker.amountOfHeart.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card before shuffle" do
      @poker.amountOfDiamond.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card before shuffle" do
      @poker.amountOfClub.should == 13
    end
  end

  describe "#shuffle" do
    before do
      @arrayOfPokerBeforeShuffle = @poker.pokerArray.clone
      @poker.shuffle
    end
    
    it "The amount Of pokers must be 52 after shuffle after shuffle" do
      @poker.amountOfTotal.should == 52
    end

    it "Every suit Of Poker include 13 pieces of card after shuffle" do
      @poker.amountOfSpade.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after shuffle" do
      @poker.amountOfHeart.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after shuffle" do
      @poker.amountOfDiamond.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after shuffle" do
      @poker.amountOfClub.should == 13
    end

    it "The order of pokers must be change after shuffle" do
      @arrayOfPokerBeforeShuffle.should_not == @poker.pokerArray
    end
  end

  describe "#deal" do
    before do
      @poker.shuffle
      @arrayOfPokerBeforeDeal = @poker.pokerArray.clone
      @poker.deal
    end
    
    it "Deal must be after shuffle" do
      @poker.should be_shuffled
    end

    it "The amount of pokers must still be 52 after shuffle" do
      @poker.amountOfTotal.should == 52
    end

    it "Every suit Of Poker include 13 pieces of card after shuffle" do
      @poker.amountOfSpade.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after deal" do
      @poker.amountOfHeart.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after deal" do
      @poker.amountOfDiamond.should == 13
    end
    
    it "Every suit Of Poker include 13 pieces of card after deal" do
      @poker.amountOfClub.should == 13
    end

    it "The order of pokers must be same as before deal" do
      @arrayOfPokerBeforeDeal == @poker.pokerArray
    end

  end
end