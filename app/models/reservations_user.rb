class ReservationsUser < ApplicationRecord
   belongs_to :user
   belongs_to :reservation
end
