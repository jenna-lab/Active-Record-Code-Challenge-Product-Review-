# Active Record Code Challenge: Product Review

## 27-02-2023

## Jennifer Sammy

## Description/introduction

We'll be working with an e-commerce domain. We'll be focusing on the product reviews.

We have three models: User, Review, and Product.

For our purposes, a Product has many Users, a User has many Products’ s, and a Review belongs to a User and to a Product.

Product - User is a many to many relationship.

## Setup/Installation Requirements

- Create a new folder for your project.In the terminal by running mkdir my-project-folder.
- Change into the project folder by running cd my-project-folder.
- Initialize a new Git repository by running git init.
- Prepare all initial files e.g gemfile and run bundle install.
- Do not forget to include the config files,Rakefile as well as the db files.
- Create a migration for the reviews table, with columns for product_id, user_id, star_rating, and comment.
- Create models for the User, Review, and Product classes, and define the associations between them.
- Create class and instance methods
- Use the seeds.rb file to create sample data to test your models and associations.
- Write sample instances in the run file to test out the methods created above.
- Test your code in the console to ensure it is working properly.

## Requirements

Ruby

## BDD/Deliverables

Create the following classes and their respective methods.

Setup your application so it runs from a configured run file.

Create instances of the classes on the run file and try out the methods you just created.

Use the notation # for instance methods, and .(dot) for class methods.

Feel free to build out any helper methods if needed.

### Migrations

- Before working on the rest of the deliverables, you will need to create a

migration for the reviews table.

- A Review belongs to a Product, and a Review also belongs to a User. In your migration, create any columns your reviews table will need to establish these relationships.
- The reviews table should also have:
  A star_rating column that stores an integer.
  A comment column that stores a string.
  After creating and running your migration, create your Review class, and use the seeds.rb file to create Review instances so you can test your code.

- Once you've set up your reviews table, work on building out the following deliverables.

- Object Association Methods
  Use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

- Review
  Review#user
  Returns the User instance for this Review
  Review#product
  Returns the Product instance for this Review
- Product
  Product#reviews
  Returns a collection of all the Reviews for the Product
  Product#users
  Returns a collection of all the Users who reviewed the Product
- User
  User#reviews
  Returns a collection of all the Reviews that the User has given
  User#products
  Returns a collection of all the Products that the User has reviewed
  Use the rake console and check that these methods work before proceeding. For example, you should be able to call User.first.products and see a list of the

products for the first user in the database based on your seed data; and Review.first.user should return the user for the first review in the database.

### Aggregate and Association Methods

- Review
  Review#print_review
  This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
- Product
  Product#leave_review(user, star_rating, comment)
  Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
  Product#print_all_reviews
  This should puts in the terminal a string representing each review for this product
  Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
  Product#average_rating
  Returns a float representing the average star rating for all reviews for this product
- User
  User#favorite_product
  Returns the product instance that has the highest star rating from this user
  User#remove_reviews(product)
  Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
  You will have to delete any rows from the reviews table associated with this user and the product

  ## Videolink

  [![Watch the video](video)](https://drive.google.com/file/d/1lr2XH6d6odpTILu_aJW3cG9hH79rG7B_/view)

## Bugs

There are no bugs in the project.

## Support/Contact Details

jensam209@gmail.com

## License

License 'https://github.com/jenna-lab/Active-Record-Code-Challenge-Product-Review-/blob/main/LICENSE.md'
