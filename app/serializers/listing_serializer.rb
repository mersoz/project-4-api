class ListingSerializer < ActiveModel::Serializer
  attributes :id, :api_source, :job_id, :active, :api_source, :indeed_key, :active, :job_title, :listing_company, :location, :date_posted, :snippet, :url, :latitude, :longitude, :company_id
  has_one :user
  has_one :company
end
