class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks, :dependent => :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo
  # when I delete a list, I want to delete the link between the movie and the list, not the movie.
end
