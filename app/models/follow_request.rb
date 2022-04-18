class FollowRequest < ApplicationRecord
  validates(:sender_id, presence: true)
  validates(:recipient_id, presence: true)

  belongs_to :recipient, class_name: "User"
  belongs_to :sender, class_name: "User"

  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }
end
