class Category < ApplicationRecord

    belongs_to :user
    belongs_to :restaurant
    validates :name, inclusion: { in: [ "Chinese", "Italian" , "Japanese", "Thai", "Lebanese" ], allow_blank: false, message: "not a valid category" }
    
end
