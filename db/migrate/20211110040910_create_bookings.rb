class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :traveller, null: false, foreign_key: {to_table: :users}
      t.references :host, null: false, foreign_key: {to_table: :users}
      t.references :property, null: false, foreign_key: true
      t.date :check_in_date
      t.date :check_out_date
      t.integer :adult_count
      t.integer :child_count

      t.timestamps
    end
  end
end
