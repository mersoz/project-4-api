class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :company
  #, counter_cache: :count_of_listings

  has_and_belongs_to_many :favorited_by, class_name: "User", join_table: "listings_users"

  validates :user_id, presence: true
end
