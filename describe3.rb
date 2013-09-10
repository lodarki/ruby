require_relative 'Acount'

describe Acount do
  before do
    @account = Acount.new('test')
    @account.deposit(100)
  end

  describe '#deposit' do
    it 'should change the balance' do
      lambda { @account.deposit(100) }.should change{@account.balance}
    end

    it 'should change the balance of Rs.200.0' do
      lambda { @account.deposit(100) }.should change{@account.balance}.to(200.00)
    end

    it 'should change the balance by Rs.100.0' do
      lambda { @account.deposit(100) }.should change{@account.balance}.by(100.00)
    end

    it 'should change the balance from 100.0 to 200.0' do
      lambda { @account.deposit(100) }.should change{@account.balance}.from(100.00).to(200.00)
    end
  end
end