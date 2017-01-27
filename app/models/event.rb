class Event < ActiveRecord::Base
  mount_uploader :image, EventUploader
  validates_presence_of :title, :description, :location
end
