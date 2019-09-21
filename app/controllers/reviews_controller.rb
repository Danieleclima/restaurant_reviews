class ReviewsController < ApplicationController

    def create
        #binding.pry
        @review = Review.new(review_params)
        if @review.valid?
            @review.save
            redirect_to user_path(current_user)
        else
           @restaurant = Restaurant.find_by(:id => params[:review][:restaurant_id])
            render 'restaurants/show'
        end
    end

    def review_params
        params.require(:review).permit(:rating, :description, :user_id, :restaurant_id)
    end

end
