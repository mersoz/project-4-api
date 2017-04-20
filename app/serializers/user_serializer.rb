class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :industry, :country_of_origin, :seeking_work

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
