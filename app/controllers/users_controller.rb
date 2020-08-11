class UsersController < ApplicationController
    helper_method :current_user

    before_action :logged_in?, only: [:show]

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/user'
        else
            redirect_to '/signup'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name,:password,:password_confirmation)
    end

    def logged_in?
        return redirect_to '/login' if !session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end
    
end
