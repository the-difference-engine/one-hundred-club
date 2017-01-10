class Siren < ActiveRecord::Base
  mount_uploader :pdf, SirenUploader
end
