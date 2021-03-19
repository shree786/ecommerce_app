class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def destroy
    @user = User.params.require(:user).permit(:user_id)
  end
  

end
