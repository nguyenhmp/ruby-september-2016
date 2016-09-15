require 'test_helper'

class NumbersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get guess" do
    get :guess
    assert_response :success
  end

end
