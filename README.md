Magpie
======

Description
-----------

Magpie is web application to help you keep track of the items you want. A user can sign up for an account and create lists of items. Each 
list can hold multiple items.

Week 1
------

* Removed test unit (test directory)
* Added minitest-rails to the application
* rails g mini_test:install
* Added minitest-rails-capybara to the application
* Updated the test_helper file
* rails generate mini_test:feature DisplayingWishlists --spec
* Created feature spec for listing the wishlists
* Updated routes for list index
* Created ListsController
* Added the index method to the controller
* Added the view
* Set the model in the controller
* Updated the view to display the model

Week 2
------

* Added factory_girl_rails to the Gemfile
* Added the wishlist migration and model
* Created the Wishlist FactoryGirl factory
* Changed the feature test to use the real model
* Removed the old Wishlist model and spec
* Changed list index controller to use real model and made test pass
* Added test for item count
* Added test for empty view
* Added empty view and made test pass

Week 3
------

* Created failing test with scenario for signing up with valid data
* Created route, model, migration, controller, and view
* Finished form for new template
* Finished scenario for valid user
* Finished validations for email, username, and password
* Display error on page if invalid
* Created show view for a user
