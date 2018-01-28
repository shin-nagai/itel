class ReservationsWarehouse < ApplicationRecord
   belongs_to :warehouse
   belongs_to :reservation
end
