class UsersController < ApplicationController
  
  def new

  end
  def create
    @user = User.new(user_params)
    return redirect_to '/users/new' unless @user.save
    log_user_in(@user)
  end


  private
  def user_params
    params.require(:user).permit(:password, :name, :password_confirmation)
  end



end
