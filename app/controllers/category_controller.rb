class categoryController < ApplicationController

def index 
	@categories = category.all 
	respond_to do |format|
		format.html #should be a page not found
		format.json	{ render :json => @categories.map(&:attributes) }
	end
end

end
