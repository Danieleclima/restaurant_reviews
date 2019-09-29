class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
    if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
        render 'users/new'
    end
    end

    def show
       if current_user.id != params[:id]
         redirect_to '/restaurants'
       end
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
