class Reservation < ApplicationRecord
   has_many :reservations_users
   has_many :users, through: :reservations_users
   belongs_to :warehouse

   has_many :reservations_warehouses
   has_many :warehouses, through: :reservations_warehouses

   def change_start(params)
      start=params[:reservation]
      time = start['start(1i)']+'-'+start['start(2i)']+'-'+start['start(3i)']+' '+start['start(4i)']+':'+start['start(5i)']
      return start=DateTime.parse(time)
   end

   def change_end(params)
      endtime=params[:reservation]
      time = endtime['end(1i)']+'-'+endtime['end(2i)']+'-'+endtime['end(3i)']+' '+endtime['end(4i)']+':'+endtime['end(5i)']
      return endtime=DateTime.parse(time)
   end
end
