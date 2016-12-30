class Siren < ActiveRecord::Base
  mount_uploader :siren, SirenUploader
end
