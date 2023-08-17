# TODOS

# STEP 1:

Movies, bookmarks and lists
* [ ] Create model
* [ ] migrate
* [ ] commit
* [ ] create validations


# NOTES:

rails generate model movie title overview poster_url rating:integer
rails db:migrate

rails generate model bookmark comment id_movies:references id_list:references

rails generate model list name
