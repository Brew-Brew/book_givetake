require 'test_helper'

class IntroduceControllerTest < ActionController::TestCase
  test "should get facility" do
    get :facility
    assert_response :success
  end

  test "should get scenery" do
    get :scenery
    assert_response :success
  end

  test "should get food" do
    get :food
    assert_response :success
  end

end
