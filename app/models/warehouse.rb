class Warehouse < ApplicationRecord
   has_many :reservations
   geocoded_by :adress
   after_validation :geocode

   has_many :reservations_warehouses
   has_many :reservations, through: :reservations_warehouses

   has_attached_file :avatar,
                      styles:  { medium: "500x500#", thumb: "300x300#" }
   validates_attachment_content_type :avatar,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

                                      class Item < ActiveRecord::Base
                                         mount_uploader :image, ImageUploader
                                      end
end
