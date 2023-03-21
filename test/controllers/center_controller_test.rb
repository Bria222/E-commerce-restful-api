require "test_helper"

class CenterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get center_index_url
    assert_response :success
  end

  test "should get show" do
    get center_show_url
    assert_response :success
  end

  test "should get create" do
    get center_create_url
    assert_response :success
  end

  test "should get destroy" do
    get center_destroy_url
    assert_response :success
  end

  test "should get update" do
    get center_update_url
    assert_response :success
  end
end
