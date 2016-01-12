class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    unless user_signed_in?
      redirect_to root_path
    else
      @profile = current_user.profile
      if @profile == nil
        @profile = current_user.create_profile
      end
    end
  end

  def show
    if @profile == nil  
      redirect_to root_path
    end
    respond_with(@profile)
  end

  def new
    redirect_to root_path
  end

  def edit
  end

  def create
    redirect_to root_path
  end

  def update
    @profile.update(profile_params)
    redirect_to profiles_path
  end

  def destroy
    @profile.destroy
    respond_with(@profile)
  end

  private
    def set_profile 
      begin
        @profile = Profile.find(params[:id])
      rescue
        redirect_to root_path
      end
    end

    def profile_params
      params[:dob] = params[:dob].to_s
      params.require(:profile).permit(:bio, :dob, :hobbies, :avatar)
    end
end
