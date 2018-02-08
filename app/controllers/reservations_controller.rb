class ReservationsController < ApplicationController
   before_action :set_reservation, only: [:show, :edit, :update, :destroy]
   before_action :move_to_index, except: :index

   # GET /reservations
   # GET /reservations.json
   def index
      # n+1問題の解消のためにいつか変更
      @reservations = Reservation.all.order("created_at DESC").page(params[:page]).per(5)
      @warehouses = Warehouse.all
   end

   # GET /reservations/1
   # GET /reservations/1.json
   def show
   end

   # GET /reservations/new
   def new
      @reservation = Reservation.new
   end

   # GET /reservations/1/edit
   def edit
      @reservation = Reservation.find(params[:id])
      starttime = @reservation.change_start(params)
      endtime = @reservation.change_end(params)
   end

   # POST /reservations
   # POST /reservations.json
   def create
      @reservation = Reservation.new()
      starttime = @reservation.change_start(params)
      endtime = @reservation.change_end(params)
      respond_to do |format|
         if Reservation.create(start: starttime, end: endtime, user_id: current_user.id, item_id: 1, warehouse_id: params.require(:reservation)['warehouse_id'])
            format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
            format.json { render :show, status: :created, location: @reservation }
         else
            format.html { render :new }
            format.json { render json: @reservation.errors, status: :unprocessable_entity }
         end
      end
   end

   # PATCH/PUT /reservations/1
   # PATCH/PUT /reservations/1.json
   def update
      respond_to do |format|
         if Reservation.update(start: starttime, end: endtime, user_id: current_user.id, item_id: 1, warehouse_id: params.require(:reservation)['warehouse_id'])
         # if @reservation.update(reservation_params)　元のコード
            format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
            format.json { render :show, status: :ok, location: @reservation }
         else
            format.html { render :edit }
            format.json { render json: @reservation.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /reservations/1
   # DELETE /reservations/1.json
   def destroy
      @reservation.destroy
      respond_to do |format|
         format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

   private
   # Use callbacks to share common setup or constraints between actions.
   def set_reservation
      @reservation = Reservation.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def reservation_params
      params.require(:reservation).permit(Reservation::REGISTRABLE).merge(user_id: 1, item_id: 1, warehouse_id: 1)
   end

   def move_to_index
      redirect_to action: :index unless user_signed_in?
   end
end
