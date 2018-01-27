class CreateWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :adress
      t.integer :price

      t.timestamps
    end
  end
end
