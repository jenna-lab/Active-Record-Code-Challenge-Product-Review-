class Review < ActiveRecord::Base
     #A Review belongs to a Product, and a Review also belongs to a User
     belongs_to :user
     belongs_to :product
end