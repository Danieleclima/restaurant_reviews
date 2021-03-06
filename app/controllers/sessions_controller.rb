class SessionsController < ApplicationController

    def new
    end

    def create
      if auth_hash = request.env["omniauth.auth"]
        @user = User.find_or_create_by_omniauth(auth_hash)
        session[:user_id] = @user.id

        redirect_to "/users/#{@user.id}"
      else
        @user = User.find_by(:username => params[:username])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to "/users/#{@user.id}"
        else
        render 'sessions/new'
        end
      end
    end
  
    def destroy
      session.destroy
      redirect_to '/restaurants'
    end

end
