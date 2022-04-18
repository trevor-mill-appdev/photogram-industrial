class Comment < ApplicationRecord
  validates(:photo_id, presence: true)
  validates(:author_id, presence: true)

  belongs_to :author, class_name: "User", counter_cache: :comments_count

  belongs_to :photo, counter_cache: :comments_count
end
