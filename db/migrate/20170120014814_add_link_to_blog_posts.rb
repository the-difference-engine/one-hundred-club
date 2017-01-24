class AddLinkToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :link, :string
  end
end
