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
* Created show view for a user

Week 4
------

* Created failing feature test for duplicate username
* Created failing model test for duplicate username
* Added validation for duplicated username
* Display error messages on new view
* Created failing tests for all other validations for a User
* Added validations needed to satisfy each test
* Created failing model test for wishlist belongs to a user
* Created migration for association
* Created failing model test for user has many wishlists

Week5
-----

* Created failing feature test for signing in with valid credentials
* Added sorcery to the Gemfile
* Installed sorcery
* Added migration for updated User model
* Added SessionsController and new view
* Added name to the User model
* Implemented the login method
* Added failing scenario for invalid email address and password
* Modified the SessionsController method to handle failing scenario
