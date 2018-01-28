class AddColumnToWarehouses < ActiveRecord::Migration[5.1]
  def change
     add_column :warehouses, :description, :string
     add_column :warehouses, :latitude, :float
     add_column :warehouses, :longitude, :float
  end
end
