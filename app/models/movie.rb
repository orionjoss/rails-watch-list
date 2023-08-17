class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: true }
  validates :overview, presence: true
  has_many :bookmarks
end
