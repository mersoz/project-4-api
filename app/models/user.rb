class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :listings_created, class_name: "Listing", foreign_key: "listing_id"

  has_and_belongs_to_many :listings_favorited, class_name: "Listing", join_table: "listings_users"
end
