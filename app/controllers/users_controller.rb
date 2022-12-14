class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.order(created_at: :desc)
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
    render 'new'
    end
  end
  
  def edit
    @user = current_user
    
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      flash[:success] = "Update Succesfully!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_message, :area)
  end
  
end
