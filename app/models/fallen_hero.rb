class FallenHero < ActiveRecord::Base
  belongs_to :fallen_hero_image
  validates_presence_of :first_name, :last_name, :department, :date_deceased, :fallen_hero_image_id

  def full_name
    first_name + " " + middle_name + " " + last_name
  end
end
