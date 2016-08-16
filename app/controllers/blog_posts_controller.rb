class BlogPostsController < ApplicationController
  
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
    has_access_to_edit_page(params[:id], current_user)
    @blog_post = BlogPost.find_by(id: params[:id])
    # render "edit.html.erb"
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
    has_access_to_edit_page(params[:id])

    blog_post = BlogPost.find_by(id: params[:id])

    if blog_post.destroy
      redirect_to '/blog_posts'
    else 
      redirect_to "/blog_posts/#{blog_post.id}"
    end
  end

private

  def has_access_to_edit_page(member_id, current_user)
      if current_user || current_user.member_id == member_id.to_i || current_user.blog_access
        # puts "GIBBERISH" + current_user.member_id.to_s
        redirect_to "/"
      end
  end
end
