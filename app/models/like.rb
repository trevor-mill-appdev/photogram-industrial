class Like < ApplicationRecord
  validates(:fan_id, presence: true)
  validates(:photo_id, presence: true)

  belongs_to :fan, class_name: "User", counter_cache: :likes_count
  belongs_to :photo, counter_cache: :likes_count
end
