class CreateReservationsWarehouses < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations_warehouses do |t|

      t.timestamps
    end
  end
end
