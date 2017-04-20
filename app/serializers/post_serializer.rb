class PostSerializer < ActiveModel::Serializer
  attributes :id, :subject, :body

  has_many :comments
  has_one :user
end
