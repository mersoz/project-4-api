class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :company
  #, counter_cache: :count_of_listings

  has_and_belongs_to_many :favorited_by, class_name: "User", foreign_key: "user_id"

  validates :user_id, presence: true
  # validates :body, length: { minimum: 0, maximum: 500 }, allow_blank: false
end
