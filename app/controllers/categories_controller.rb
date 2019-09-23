class CategoriesController < ApplicationController

    def new
        @user = User.find_by(:id => params[:id])
        @user.categories.build 
    end

    def create
    end

    def show
    end
    
    def index
        @user = User.find_by(:id => params[:id])
        if @user
        @categories = @user.categories
        else
        redirect_to '/restaurants'
        end
    end
end
