class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.create(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      profile_pic: params[:profile_pic],
    )
    render :show
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end
end
