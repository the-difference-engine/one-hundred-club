class Event < ActiveRecord::Base
  mount_uploader :image, EventUploader
end
