  class FallenHeroImage < ActiveRecord::Base
    mount_uploader :file, FallenHeroImageUploader
  has_many :fallen_heros
end
