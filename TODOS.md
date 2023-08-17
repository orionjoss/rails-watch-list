# TODOS

# STEP 1:

Crate the models for Movies, bookmarks and lists
* [X] ~~*Create model*~~ [2023-08-17]
* [X] ~~*migrate*~~ [2023-08-17]
* [X] ~~*commit*~~ [2023-08-17]
* [X] ~~*create validations*~~ [2023-08-17]
* [X] ~~*seed data to the database*~~ [2023-08-17]
* [X] ~~*create seed*~~ [2023-08-17]

# STEP 2:

Routing, control and views for lists:

# User story for lists:
* [X] ~~*A user can see all the lists*~~ [2023-08-17]
* [X] ~~*A user can see the details of a given list and its name*~~ [2023-08-17]
* [X]~~*A user can create a new list*~~ [2023-08-17]

# STEP 3:

Create controller for bookmarks

* [ ] Generate bookmark controller
* [ ] <!-- rails generate controller bookmarks -->

Create view for bookmarks

# User Stories for bookmarks:
* [ ] user can add a new bookmark (movie/list pair) to an existing list
- [ ] Checkout simple_form docs about f.association to easily create a select dropdown for our list of movies.
  <!-- GET "lists/42/bookmarks/new"
  POST "lists/42/bookmarks" -->
- [ ] A user can delete a bookmark from a list. How can we make a delete link again?

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
