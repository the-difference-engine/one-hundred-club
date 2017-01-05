class FallenHero < ActiveRecord::Base
  belongs_to :fallen_hero_image
  # mount_uploader :image_url, FallenHeroUploader

  def full_name
    first_name + " " + middle_name + " " + last_name
  end
end
