class ChangeReservationsTable < ActiveRecord::Migration[5.1]
  def change
     add_column :reservations, :start, :datetime
     add_column :reservations, :end, :datetime
     remove_column :reservations, :starttime, :integer
     remove_column :reservations, :startdate, :integer
     remove_column :reservations, :enddate, :integer
     remove_column :reservations, :endtime, :integer
  end
end
