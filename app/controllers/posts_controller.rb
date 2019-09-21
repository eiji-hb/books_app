class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    end
  end

  def index
  end



  def show
    @post = Post.find(params[:id])
  end

  def edit
  end
  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end

