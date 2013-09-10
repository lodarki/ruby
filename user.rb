require 'date'

class User

  attr_accessor :userName,:birthDay
  attr_reader   :status
  attr_reader   :age

  def initialize(testUser ,birthDay)
    @userName = testUser
    @birthDay = birthDay
    nowYear   = DateTime.now.year
    @age      = (nowYear - birthDay.year).to_i
  end

  def set_status(statusVal)
    @statusVal = statusVal
  end

  def active?
    @statusVal == 'active'
  end

  def eligible_to_vote?
    @age > 18
  end

end