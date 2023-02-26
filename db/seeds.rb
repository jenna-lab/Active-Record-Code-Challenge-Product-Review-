puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
user4 = User.create(name: Faker::Name.name)


puts "Creating products..."
product1 = Product.create(name: "Tumblr", price: 30)
product2 = Product.create(name: "Spoon", price: 60)
product3 = Product.create(name: "Plate", price: 115)
product4 = Product.create(name: "Mug", price: 135)


puts "Creating reviews..."
Review.create(comment:"Great" ,star_rating: 5,user_id: user1.id,product_id: product2.id)
Review.create(comment:"meh" ,star_rating: 4,user_id: user2.id,product_id: product2.id)
Review.create(comment:"I like it" ,star_rating: 3,user_id: user2.id,product_id: product3.id)
Review.create(comment:"I am disappointed" ,star_rating: 1,user_id: user3.id,product_id: product4.id)



puts "Done seeding!"