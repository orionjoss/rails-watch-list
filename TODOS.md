# TODOS

# STEP 1:

Crate the models for Movies, bookmarks and lists
* [X] ~~*Create model*~~ [2023-08-17]
* [X] ~~*migrate*~~ [2023-08-17]
* [X] ~~*commit*~~ [2023-08-17]
* [X] ~~*create validations*~~ [2023-08-17]
* [X] ~~*seed data to the database*~~ [2023-08-17]
* [X] ~~*create seed*~~ [2023-08-17]

Routing, control and views for lists:

# User story
* [X] ~~*A user can see all the lists*~~ [2023-08-17]

A user can see the details of a given list and its name

# NOTES:

### Generate models and migrations
rails generate model movie title overview poster_url rating:integer
rails db:migrate

rails generate model bookmark comment movie:references list:references

rails generate model list name

## Test
rspec spec/models

### Creating validations


destroy child:
:dependent => :destroy
