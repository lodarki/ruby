require_relative 'Acount'

describe Acount do
  before do
    @acount = Acount.new('test')
  end

  it 'should have balance of 0' do
    @acount.zero_balance?.should == true
  end

  it 'should have balance of 0' do
    @acount.should be_zero_balance
  end

  it 'should be a object of Acount' do
    @acount.should be_a_kind_of Acount
    @acount.should be_an_instance_of Acount
  end

end