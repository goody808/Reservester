class OwnersController < ApplicationController

before_filter :authenticate_owner!

def dashboard
	if @owner = current_owner
		@restaurants = @owner.restaurants.all
	else 
		redirect_to root_path	
	end
end 

end
