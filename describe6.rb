require_relative 'user'

describe 'A Cricket Team' do
  before do
    @team = (1..11).to_a
  end

  it "should have 11 players" do
    @team.should have(11).players
  end

  specify {@team.should have(11).players}

  describe User do
    before do
      @voter = User.new('sam', Date.new(1990,1,1))
    end

    specify {@voter.should be_eligible_to_vote}
    it "should be eligible to vote at the age of 18" do
      @voter.should be_eligible_to_vote
    end
  end

end