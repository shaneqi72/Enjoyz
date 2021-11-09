class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.references :property_type, null: false, foreign_key: true
      t.references :property_location, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :bedroom_count
      t.integer :bed_count
      t.integer :bathroom_count
      t.boolean :availability
      t.date :start_date
      t.date :end_date
      t.integer :nightly_price

      t.timestamps
    end
  end
end
