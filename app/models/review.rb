class Review < ApplicationRecord
    
    belongs_to :user
    belongs_to :restaurant
    validate :user_cannot_review_the_same_restaurant_twice
    validates :rating, presence: true 

    def user_cannot_review_the_same_restaurant_twice
        restaurant = self.restaurant_id
        user = User.find_by(:id => self.user_id)
            user.restaurants.each do |r|
            if r.id == restaurant.id
                errors.add(:user_id, "you can't review the same hotel twice")
            end
        end
    end

end
