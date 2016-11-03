class FallenHero < ActiveRecord::Base
  # mount_uploader :image_url, FallenHeroUploader

  def full_name
    first_name + " " + middle_name + " " + last_name
  end
end
