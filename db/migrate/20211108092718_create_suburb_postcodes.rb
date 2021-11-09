class CreateSuburbPostcodes < ActiveRecord::Migration[6.1]
  def change
    create_table :suburb_postcodes do |t|
      t.integer :postcode
      t.string :suburb
      t.string :city

      t.timestamps
    end
  end
end
