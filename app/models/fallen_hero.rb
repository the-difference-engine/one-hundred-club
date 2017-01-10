class FallenHero < ActiveRecord::Base
  belongs_to :fallen_hero_image

  def full_name
    first_name + " " + middle_name + " " + last_name
  end
end
