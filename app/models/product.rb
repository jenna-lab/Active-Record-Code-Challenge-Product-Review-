class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
#creates a new Review in the database associated with this Product and the User
     def leave_review(user, star_rating, comment)
        Review.create(star_rating: star_rating, comment: comment, user_id: user_id)
     end

#puts in the terminal a string representing each review for this product
     def print_all_reviews
          reviews.each { |review| review.print_review }
     end
#Returns a float representing the average star rating for all reviews for this product
     def average_rating
          self.reviews.average(:star_rating).to_f
          #to float
     end
end
#Product.all
#Product.second.print_all_reviews
#Product.second.average_rating
#Review.second.print_review
#User.second.favorite_product

# User.second.reviews
# User.second.remove_reviews(Product.find())

