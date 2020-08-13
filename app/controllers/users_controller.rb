class UsersController < ApplicationController
    def create
        if params[:user][:password] != params[:user][:password_confirmation]
            flash[:alert] =  ["Passwords don't match"]
            redirect_to '/login'
            
        end
        @user = User.create(name: params[:user][:name], password: params[:user][:password])
        session[:user_id] = @user.id
    end
end
