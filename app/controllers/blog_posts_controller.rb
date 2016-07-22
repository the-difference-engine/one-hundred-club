class BlogPostsController < ApplicationController
  def new
  end

  def create
    @blog_post = BlogPost.create(
      title: params[:title],
      content: params[:content],
      image: params[:image]
    )
    if @blog_post.save
      redirect_to "/blog_posts/#{@blog_post.id}"
    else
      render "new.html.erb"
    end
  end
end
