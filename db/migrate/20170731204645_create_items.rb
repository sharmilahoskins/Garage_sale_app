class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :item_description
      t.string :price
      t.references :sale, foreign_key: true

      t.timestamps
    end
  end
end
