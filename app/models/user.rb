class User < ApplicationRecord
  has_secure_password validations: false

  has_many :posts
  has_many :comments
  has_many :listings_created, class_name: "Listing", foreign_key: "listing_id"

  has_many :companies, through: :all_listings
  has_and_belongs_to_many :listings_favorited, class_name: "Listing", join_table: "listings_users"

  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, on: :create


  def all_listings
    (listings_created.all + listings_favorited.all).uniq
  end
end
