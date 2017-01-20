class Member < ActiveRecord::Base
  has_many :donations

  def check_amount(amount)
    amount = amount.to_i
    if amount.between?(50, 199)
      self.level = 'bronze'
      return true
    elsif amount.between?(200, 499)
      self.level = 'silver'
      return true
    elsif amount.between?(500, 4999)
      self.level = 'gold'
      return true
    elsif amount > 5000
      self.level = 'lifetime'
      return true
    else
      return false
    end
  end
end
