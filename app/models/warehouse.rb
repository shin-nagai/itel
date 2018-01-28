class Warehouse < ApplicationRecord
   has_many :reservations
   geocoded_by :adress
   after_validation :geocode

   has_many :reservations_warehouses
   has_many :reservations, through: :reservations_warehouses
end
