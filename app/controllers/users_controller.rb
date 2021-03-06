class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User is created successfully'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User is updated successfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
