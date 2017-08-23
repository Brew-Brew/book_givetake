require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get first" do
    get :first
    assert_response :success
  end

end
