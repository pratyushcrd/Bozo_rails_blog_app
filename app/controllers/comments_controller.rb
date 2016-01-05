class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :find_forum
  respond_to :html



  def create
    @comment = @forum.comments.new(comment_params)
    @comment.user = current_user;
    @comment.save
    redirect_to :back
  end

  def update
    @forum.comments.update(comment_params)
    redirect_to :back
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

  private

    def find_forum 
      @forum = Forum.find(params[:forum_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:comment, :user_id, :forum_id)
    end
end
