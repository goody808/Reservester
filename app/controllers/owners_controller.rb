class OwnersController < ApplicationController

def dashboard
	if @owner = current_owner
		@restaurants = @owner.restaurants.all
		@reservations = []

		@restaurants.each do |restaurant|
			restaurant.reservations.each do |reservation|
				reservations << restaurant
			end
		end
	else 
		redirect_to root_path	
	end
end 

end
