class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments
  has_many :listings_created
  has_many :listings_favorited

  attributes :id, :username, :first_name, :last_name, :email, :full_name, :industry, :country_of_origin, :seeking_work, :listings_favorited_ids

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
