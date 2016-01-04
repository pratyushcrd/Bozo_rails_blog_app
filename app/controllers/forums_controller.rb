class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy]
  before_action :check_login, only: [:update, :destroy, :new, :edit, :create]

  respond_to :html

  def index
    @forums = Forum.all
    respond_with(@forums)
  end

  def show
    respond_with(@forum)
  end

  def like
    @forum = Forum.find(params[:forum_id])
    @forum.liked_by current_user
    redirect_to :back
  end

  def unlike
    @forum = Forum.find(params[:forum_id])
    @forum.unliked_by current_user
    redirect_to :back
  end

  def new
    @forum = Forum.new
    respond_with(@forum)
  end

  def edit
  end

  def create
    @forum = current_user.forums.new(forum_params)
    @forum.category = Category.find(params[:forum][:category])
    @forum.save

    respond_with(@forum)
  end

  def update
    @forum.update(forum_params)
    @forum.category = Category.find(params[:forum][:category])
    @forum.save
    respond_with(@forum)
  end

  def destroy
    @forum.destroy
    respond_with(@forum)
  end

  private
    def set_forum
      @forum = Forum.find(params[:id])
    end

    def forum_params
      params.require(:forum).permit(:title, :post)
    end

    def check_login
      unless user_signed_in?
        redirect_to (root_path)
        flash[:notice] = "Please Log In!"
      end
    end
end
