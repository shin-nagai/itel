class User < ApplicationRecord
   has_many :items_users
   has_many :items, through: :items_uesrs
   has_many :reservations_users
   has_many :reservations, through: :reservations_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
