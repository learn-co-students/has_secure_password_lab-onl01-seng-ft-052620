class SessionsController < ApplicationController

    def new
    end
    


    def create
        # binding.pry
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to '/users/show'
    end

    def destroy 
        if session[:user_id]
            session.destroy
            redirect_to '/login'
          end
    end 

    def show 
        is_logged_in?
    end

    private 

    def is_logged_in? 
        redirect_to '/login' unless session.include? [:user_id]
    end

end
