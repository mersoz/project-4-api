class AddColumnsToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :job_title, :string
    add_column :listings, :listing_company, :string
    add_column :listings, :location, :string
    add_column :listings, :date_posted, :date
    add_column :listings, :snippet, :string
    add_column :listings, :url, :string
    add_column :listings, :indeed_key, :string
    add_column :listings, :latitude, :float
    add_column :listings, :longitude, :float
  end
end
