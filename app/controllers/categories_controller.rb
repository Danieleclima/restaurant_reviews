class CategoriesController < ApplicationController

    def new
        @user = User.find_by(:id => session[:user_id])
        @category = @user.categories.build
    end

    def create
        @category = Category.find_or_create_by(category_params)
        if @category.valid?
        redirect_to user_path(params[:category][:user_id])
        else
            @user= User.find_by(:id => @category.user_id)
         render "/categories/new"
        end
    end

    def show
    end
    
    def index
        @user = User.find_by(:id => params[:user_id])
        if @user
        @categories = @user.categories
        else
        redirect_to '/restaurants'
        end
    end

    def category_params
        params.require(:category).permit(:name, :user_id, :restaurant_id)
    end
end
