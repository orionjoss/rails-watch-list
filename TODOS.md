# TODOS

# STEP 1:

Crate the models for Movies, bookmarks and lists
* [X] ~~*Create model*~~ [2023-08-17]
* [X] ~~*migrate*~~ [2023-08-17]
* [X] ~~*commit*~~ [2023-08-17]
* [X] ~~*create validations*~~ [2023-08-17]
* [X] ~~*seed data to the database*~~ [2023-08-17]
* [ ] create
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
