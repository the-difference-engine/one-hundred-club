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

  def show
    @blog_post = BlogPost.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @blog_post = BlogPost.find_by(id: params[:id])
  end

  def update
    blog_post = BlogPost.find_by(id: params[:id])

    blog_post = BlogPost.update(
      tite: params[:title],
      content: params[:content],
      image: params[:image]
    )
    flash[:success] = "Your blog post has been updated!"
    redirect_to "/blog_posts/#{blog_post.id}"
  end
end
