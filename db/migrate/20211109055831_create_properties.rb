class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.references :property_type, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.string :name
      t.text :description
      t.integer :bedroom_count
      t.integer :bed_count
      t.integer :bathroom_count
      t.boolean :availability
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
