class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def create 
       @user = User.create(user_params)
       if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
       else 
        redirect_to signup_path
       end 
    end 

    def home 
    end 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end 