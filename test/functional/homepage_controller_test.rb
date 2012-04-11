require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#news ul', 1
    assert_select '#special-box-left h1','School Assignment'
    assert_select '#special-box-right h1','Practice'
  end

end
