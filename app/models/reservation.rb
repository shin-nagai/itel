class Reservation < ApplicationRecord
   belongs_to :user
   has_many :items, through: :users
   belongs_to :warehouse
end
