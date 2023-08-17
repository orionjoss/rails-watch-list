class Movie < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: true }
  validates :overview, present
  validates :address, presence: true
  has_many :boomarks
end

# t.string :title
# t.string :overview
# t.string :poster_url
# t.integer :rating
