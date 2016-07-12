class FallenHero < ActiveRecord::Base
  mount_uploader :image_url, FallenHeroUploader
end
