class Item < ApplicationRecord
   has_many :items_users
   has_many :users, through: :items_users

   mount_uploader :image, ImageUploader
end

# class Item < ActiveRecord::Base
#    mount_uploader :image, ImageUploader
# end
