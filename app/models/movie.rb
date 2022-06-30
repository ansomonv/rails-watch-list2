class Movie < ApplicationRecord
  validates :title, :overview, presence: true, uniqueness: true,
  belongs_to :list,
  has_many :bookmarks
end
# A movie must have a unique title and an overview.
