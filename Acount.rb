class Acount
    attr_accessor :testuser,:depositVal,:balanceVal,:withdrawnVal,:transferVal
  def initialize(testuser)
    @testuser = testuser
    @depositVal = 0.0
    @balanceVal = 0.0
    @withdrawnVal = 0.0
    @transferVal = 0.0
  end

  def deposit(depositVal)
    @depositVal = depositVal
    @balanceVal += @depositVal if depositVal > 0
  end

  def withdrawn(withdrawnVal)
    @withdrawnVal = withdrawnVal
    @balanceVal -= withdrawnVal
  end

  def transfer(transferVal, payee)
    @transferVal = transferVal
    @balanceVal -= transferVal
  end

  def zero_balance
    balanceValv == 0.0
  end

  def balance
    balanceVal
  end
end