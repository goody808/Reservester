class CatagoryController < ApplicationController

def index 
	@catagories = Catagory.all 
	respond_to do |format|
		format.html #should be a page not found
		format.json	{ render :json => @catagories.map(&:attributes) }
	end
end

end
