class AddLatLongToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :latitude, :float
    add_column :sales, :longitude, :float
  end
end
