class UsersController < ApplicationController
  include ApplicationHelper 
  before_action :logged_in?, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = @user.errors.full_messages[0]
      render action: 'new'
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
