class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :traveller, null: false, foreign_key: { to_table: :users }
      t.references :property, null: false, foreign_key: true
      t.integer :accepted
      t.timestamps
    end
  end
end
