require 'test_helper'

class RoomControllerTest < ActionController::TestCase
  test "should get room1" do
    get :room1
    assert_response :success
  end

  test "should get room2" do
    get :room2
    assert_response :success
  end

  test "should get room3" do
    get :room3
    assert_response :success
  end

  test "should get room4" do
    get :room4
    assert_response :success
  end

end
