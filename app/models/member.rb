class Member < ActiveRecord::Base
  has_many :donations

  def check_amount(amount)
    amount = amount.to_i
    if amount.between?(50, 199)
      self.level = 'Bronze'
      return true
    elsif amount.between?(200, 499)
      self.level = 'Silver'
      return true
    elsif amount.between?(500, 4999)
      self.level = 'Gold'
      return true
    elsif amount > 5000
      self.level = 'Lifetime'
      return true
    else
      return false
    end
  end
end
