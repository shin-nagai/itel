class CreateReservationsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations_users do |t|

      t.timestamps
    end
  end
end
