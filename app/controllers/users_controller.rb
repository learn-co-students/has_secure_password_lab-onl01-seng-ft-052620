class UsersController < ApplicationController

    def show
        current_user
    end

    def new
        @user = User.new
    end

    def create
        return redirect_to new_user_path unless params[:user][:password] == params[:user][:password_confirmation]
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:alert] = "User already exist or the input is invalid"
            render :new
        end
    end


    private

    def user_params
        params.require("user").permit(:name, :password, :password_confirmation)
    end
end
