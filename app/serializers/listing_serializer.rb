class ListingSerializer < ActiveModel::Serializer
  attributes :id, :api_source, :job_id, :active
  has_one :user
  has_one :company
end
