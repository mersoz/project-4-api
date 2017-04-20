class CompanySerializer < ActiveModel::Serializer
  has_many :listings
  attributes :id, :name, :careers_url, :glassdoor_id, :status, :website, :description
end
