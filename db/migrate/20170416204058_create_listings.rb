class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :api_source
      t.integer :job_id
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
