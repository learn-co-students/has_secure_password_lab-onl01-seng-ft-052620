class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        redirect_to '/signup' unless @user.save
        session[:user_id] = @user.id
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
