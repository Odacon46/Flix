require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
<<<<<<< HEAD
   test "should display index page" do 
   	 get:index
   	 assert_response :success
   	 movies = assigns(:movies)
   	 refute_nil movies
   	 assert_equal 2, movies.count
   end
=======
  # test "the truth" do
  #   assert true
  # end
>>>>>>> 2f4362f9cc18d8373d784910fed8064851e4cb46
end
