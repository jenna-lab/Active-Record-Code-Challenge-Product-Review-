class Review < ActiveRecord::Base
     #A Review belongs to a Product, and a Review also belongs to a User
     belongs_to :user
     belongs_to :product
 #puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
     def print_review
        puts "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}" 
    #review.second.print_review
    #review.print_review
    end
 
 end
 
 