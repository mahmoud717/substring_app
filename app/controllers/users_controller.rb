class UsersController < ApplicationController
  include ApplicationHelper 
  before_action :logged_in?, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if user.save
      redirect_to @user
    else
      render new_user_path,  alert: @user.errors.full_messages
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    redirect_to root_path, notice: "There is no such user" and return  if !@user 
    
    if @user.id != session[:user_id]
      redirect_to root_path , notice: "You shall not pass"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
