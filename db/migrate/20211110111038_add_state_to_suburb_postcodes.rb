class AddStateToSuburbPostcodes < ActiveRecord::Migration[6.1]
  def change
    add_column :suburb_postcodes, :state, :string
  end
end
