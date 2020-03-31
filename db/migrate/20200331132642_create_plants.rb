class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :price
      t.integer :size
      t.string :category
      t.boolean :in_stock
      t.string :description
      t.integer :care

      t.timestamps
    end
  end
end
