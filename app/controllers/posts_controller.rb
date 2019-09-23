class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))

    if @post.save
      redirect_to post_path(@post)
    end
  end

  def index
    @posts = Post.all
  end



  def show
    @post = current_user.posts.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])


  end

  def update
    @post = current_user.posts.find(params[:id])
    @post.update!(post_params)
    redirect_to post_path(@post)
  end
  def destroy
    @post = current_user.posts.find(params[:id])
    post.destroy
    redirect_to posts_path
  end
  private

    def post_params
      params.require(:post).permit(:title, :content,:image)
    end
end

