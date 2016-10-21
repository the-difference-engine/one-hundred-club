class BlogPostsController < ApplicationController
  before_action :authenticate_blog_admin!, except: [:index, :show]

  def index
    @blog_posts = BlogPost.all
  end

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

    blog_post.update(
      title: params[:title],
      content: params[:content],
      image: params[:image]
    )
    flash[:success] = "Your blog post has been updated!"
    redirect_to "/blog_posts/#{blog_post.id}"
  end

  def destroy
    blog_post = BlogPost.find_by(id: params[:id])

    if blog_post.destroy
      redirect_to '/blog_posts'
    else
      redirect_to "/blog_posts/#{blog_post.id}"
    end
  end

private

  def authenticate_blog_admin!
      unless current_user && current_user.blog_access
        redirect_to '/'
      end
  end
end
