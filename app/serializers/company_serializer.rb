class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :careers_url, :glassdoor_id, :status
end
