class UsersController < ApplicationController

    def show
    end
    
    def new
    end
    
    def create
        if params[:password] == params[:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to hello_path
        else
            redirect_to signup_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end