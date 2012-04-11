require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    shawn = users(:one)
    post :create,:name=>shawn.stuNo,:password => 'right'
    assert_redirected_to homepage_url
    assert_equal shawn.id, session[:user_id]
  end

	test "should fail login" do
		shawn = users(:one)
		post :create,:name=>shawn.stuNo,:password => 'wrong'
		assert_redirected_to login_url
	end

  test "should logout" do
    delete :destriy
    assert_redirected_to homepage_url
  end

end
