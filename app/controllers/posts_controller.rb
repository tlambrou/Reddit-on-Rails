class PostsController < ApplicationController
  def index
    @sub = Sub.find(params[:sub_id])
    @posts = Post.all
  end

  def new
    @sub = Sub.find(params[:sub_id])
    @post = Post.new
  end

  def create
    @sub = Sub.find(params[:sub_id])
    @post = @sub.posts.new(post_params)

    if @post.save
      redirect_to @sub
    else
      redirect_to @sub
      flash[:notice] = "Post could not be saved."
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :url)
    end

end
