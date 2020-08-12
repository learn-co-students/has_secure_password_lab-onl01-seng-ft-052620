class SessionsController < ApplicationController

    def show
    end
    
    def new
    end
    
    def create
      if params[:password] && params[:name] 
        @user = User.find_by(name: params[:name])
        return head(:forbidden) unless
            @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to hello_path
      else
        redirect_to login_path
      end
    end

end