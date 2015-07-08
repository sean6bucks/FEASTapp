class UsersController < ApplicationController
  before_action :authenticate_user!
  layout 'backend'
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    
    if @user.destroy
      flash[:alert] = "User was deleted."
      redirect_to users_path
    end
  end
end
