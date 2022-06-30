class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
# A list must have a unique name.
# A list has many bookmarks
# A list has many movies through bookmarks
# A movie has many bookmarks
# A bookmark belongs to a movie
# A bookmark belongs to a list
# You can’t delete a movie if it is referenced in at least one bookmark.
# When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
