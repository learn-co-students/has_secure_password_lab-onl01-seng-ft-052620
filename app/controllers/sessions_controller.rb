class SessionsController < ApplicationController

    def show
    end
    
    def new
    end
    
    def create
      if params[:user][:password] && params[:user][:name] 
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless
            @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to hello_path
      else
        redirect_to login_path
      end
    end

end