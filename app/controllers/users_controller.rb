class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find(user_params)
    if @user.save
      sessions[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = "User not created"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
