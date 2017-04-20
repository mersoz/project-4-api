class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :subject, length: { minimum: 0, maximum: 100 }, allow_blank: false
  validates :body, length: { minimum: 0, maximum: 500 }, allow_blank: false
end
