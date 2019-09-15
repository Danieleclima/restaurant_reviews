class SessionsController < ApplicationController

    def new
    end
  
    def create
      #binding.pry
        @user = User.find_by(username: params[:username])
      if !@user.authenticate(params[:password])
        redirect_to '/login'
      else
        session[:username] = params[:username]
        redirect_to '/restaurants' 
      end
    end
  
    def destroy
      session.delete :name
    end

end
