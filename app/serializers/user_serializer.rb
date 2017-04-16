class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :first_name, :last_name, :industry, :country_of_origin, :seeking_work
end
