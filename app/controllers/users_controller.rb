class UsersController < ApplicationController
   def show
      # binding.pry
      @email = current_user.email
      @reservations = Reservation.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
      @warehouses = Warehouse.all
   end
end
