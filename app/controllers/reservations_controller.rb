class ReservationsController < ApplicationController

	def index 
		@reservations = Reservation.all
	end

	def show
		@reservation = Reservation.find(params[:id])
	end 

	def new 
		@reservation = Reservation.new
	end

	def create 
		@reservation = Reservation.find(params[:restaurant])

		if @reservation.save
			redirect_to @reservation
		else 
			render 'new'
		end
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])
		
		if @reservation.update_attributes(params[:restaurant])
			redirect_to @reservation
		else 
			render 'edit'
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		if @reservation.destroy
			redirect_to	 reservations_path
		end
	end

end 

