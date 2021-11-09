class CreatePropertyLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :property_locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :suburb_postcode, null: false, foreign_key: true
      t.integer :street_number
      t.string :street_name

      t.timestamps
    end
  end
end
