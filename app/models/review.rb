class Review < ApplicationRecord
    
    belongs_to :user
    belongs_to :restaurant
    validate :user_cannot_review_the_same_restaurant_twice

    def user_cannot_review_the_same_restaurant_twice
        restaurant = self.restaurant_id
        self.user_id.restaurants.each do |r|
            if r.id == restaurant.id
                errors.add(:user_id, "you can't review the same hotel twice")
            end
        end
    end

end
