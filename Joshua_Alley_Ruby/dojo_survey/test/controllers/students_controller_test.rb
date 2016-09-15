require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get finish" do
    get :finish
    assert_response :success
  end

end
