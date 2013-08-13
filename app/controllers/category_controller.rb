class CategoryController < ApplicationController

	def index 
		@categories = Category.all 
		respond_to do |format|
			format.html #should be a page not found
			format.json	{ render :json => @categories.map(&:attributes) }
		end
	end

	def show
			@category = Category.find(params[:id])
			@restaurants = @category.restaurants
	end
end