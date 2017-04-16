class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :careers_url
      t.integer :glassdoor_id
      t.boolean :status

      t.timestamps
    end
  end
end
