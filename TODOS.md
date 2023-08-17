# TODOS

# STEP 1:

Movies, bookmarks and lists
* [X] ~~*Create model*~~ [2023-08-17]
* [X] ~~*migrate*~~ [2023-08-17]
* [X] ~~*commit*~~ [2023-08-17]
* [ ] create validations


# NOTES:

### Generate models and migrations
rails generate model movie title overview poster_url rating:integer
rails db:migrate

rails generate model bookmark comment movie:references list:references

rails generate model list name

## Test
rspec spec/models

### Creating validations
