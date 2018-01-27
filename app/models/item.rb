class Item < ApplicationRecord
   belongs_to :user
   has_many :reservations, through: :users

   mount_uploader :image, ImageUploader
end

# class Item < ActiveRecord::Base
#    mount_uploader :image, ImageUploader
# end
