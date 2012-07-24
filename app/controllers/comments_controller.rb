class CommentsController < ApplicationController
  def create
    @link = Link.find(params[:link_id])

    @comment = @link.comments.build(params[:comment])
    @comment.user = current_user

    if @comment.save
      flash[:success] = "Comment saved!"
      redirect_to link_path(@link)
    else
      flash[:error] = "Your comment was not saved"
      redirect_to link_path(@link)
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
end
