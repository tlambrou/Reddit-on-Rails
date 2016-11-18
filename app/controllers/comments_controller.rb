class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post
    else
      redirect_to @post
      flash[:notice] = "Comment could not be saved."
    end
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
