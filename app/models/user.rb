class User < ApplicationRecord

    has_secure_password
    has_many :reviews
    has_many :categories
    has_many :restaurants, through: :reviews
    validates :username, presence: true
    validates :username, uniqueness: true

  def self.find_or_create_by_omniauth(auth_hash)
   where(:username => auth_hash["info"]["email"]).first_or_create do |user|
    user.password = SecureRandom.hex
   end
  end

  def self.most_reviews
    select("*, count(reviews.id) AS reviews_count").joins(:reviews).group(:user_id).order('reviews_count DESC').limit(1)
  end

end
