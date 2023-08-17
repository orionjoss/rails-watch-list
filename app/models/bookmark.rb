class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6}
  #validate a combo of movies so it doesn't repeat in the list.
  validates :movie_id, uniqueness: { scope: :list_id }
end
