require 'test_helper'

class CheckupControllerTest < ActionController::TestCase
  test "should get charts_mine" do
    get :charts_mine
    assert_response :success
  end

  test "should get charts_category" do
    get :charts_category
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get write1" do
    get :write1
    assert_response :success
  end

  test "should get write2" do
    get :write2
    assert_response :success
  end

  test "should get write3" do
    get :write3
    assert_response :success
  end

  test "should get write_complete" do
    get :write_complete
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get edit_complete" do
    get :edit_complete
    assert_response :success
  end

  test "should get delete_complete" do
    get :delete_complete
    assert_response :success
  end

end
