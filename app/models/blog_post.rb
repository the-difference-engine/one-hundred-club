class BlogPost < ActiveRecord::Base
  mount_uploader :image, BlogPostUploader
  validates_presence_of :title, :content
end
