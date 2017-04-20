class AddColumnsToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :website, :string
    add_column :companies, :description, :string
  end
end
