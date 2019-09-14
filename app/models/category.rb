class Category < ApplicationRecord

    validates :name, inclusion: { in: [ "Chinese", "Italian" , "Japanese", "Thai", "Lebanese" ], allow_blank: false, message: "not a valid category" }
end
