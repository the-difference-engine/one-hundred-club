class BlogPostsController < ApplicationController
  before_action :custom_authenticate_user!, except: [:index, :show]
  def index
    @q = BlogPost.ransack(params[:q])
    @blog_posts = @q.result(distinct: true).paginate(page: params[:page], per_page: 6)
  end 

  def new
    @blog_post = BlogPost.new
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
      render 'new.html.erb'
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
      image: params[:image],
      remove_image: params[:remove_image]
    )
    flash[:success] = 'Your blog post has been updated!'
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
end
