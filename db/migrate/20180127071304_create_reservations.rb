class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :warehouse_id
      t.integer :startdate
      t.integer :enddate
      t.integer :starttime
      t.integer :endtime
      t.timestamps
    end
  end
end
