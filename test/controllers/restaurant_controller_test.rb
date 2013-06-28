require 'test_helper'
 
# class RestaurantTest < ActiveSupport::TestCase

# test "should get index" do 
# 	get :index 
# 	assert_response :success
# 	assert_not_nil assigns(:restaurants)
# end

# test "should restaurant id 3" do 
# 	get(:show, {'id' => "2"})
# end 

test "should create restaurant" do 
	assert_difference('Restauant.count') do 
		restaurant :create, restaurant: , "saved?"
	end 

# 	assert_redirect_to restaurant_path(assigns(:restaurant))
end
