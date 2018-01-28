class Warehouse < ApplicationRecord
   has_many :reservations
   geocoded_by :adress
   after_validation :geocode
end
