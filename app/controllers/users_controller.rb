class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy

    flash[:alert] = "User was deleted."
    redirect_to users_path
  end
end
