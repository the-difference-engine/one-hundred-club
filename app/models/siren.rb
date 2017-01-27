class Siren < ActiveRecord::Base
  mount_uploader :pdf, SirenUploader
  validates_presence_of :title, :pdf
end
