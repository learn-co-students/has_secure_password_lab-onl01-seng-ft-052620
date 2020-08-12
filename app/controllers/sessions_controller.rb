class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])
      log_user_in(@user)
    end
  end


end
