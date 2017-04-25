class Likeuser < ApplicationRecord
  belongs_to :user
  belongs_to :like
  
  validates :user_id, presence: true
  validates :like_id, presence: true
end
