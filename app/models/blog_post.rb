class BlogPost < ActiveRecord::Base
  mount_uploader :image, BlogPostUploader
end
