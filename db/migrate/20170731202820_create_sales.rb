class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.date :date
      t.string :time
      t.text :description

      t.timestamps
    end
  end
end
