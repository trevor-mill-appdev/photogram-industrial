# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  author_id  :bigint           not null
#  photo_id   :bigint           not null
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  validates(:photo_id, presence: true)
  validates(:author_id, presence: true)

  belongs_to :author, class_name: "User", counter_cache: :comments_count

  belongs_to :photo, counter_cache: :comments_count
end
