class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :postcode
      t.string :suburb
      t.integer :street_number
      t.string :street_name

      t.timestamps
    end
  end
end
