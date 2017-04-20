class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user_id, presence: true
  validates :body, length: { minimum: 0, maximum: 500 }, allow_blank: false
end
