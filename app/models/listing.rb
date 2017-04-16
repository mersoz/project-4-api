class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :company

  has_and_belongs_to_many :favorited_by, class_name: "User", foreign_key: "user_id"
end
