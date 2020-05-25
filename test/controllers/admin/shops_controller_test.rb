require 'test_helper'

class Admin::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_shops_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_shops_edit_url
    assert_response :success
  end

  test "should get cancel" do
    get admin_shops_cancel_url
    assert_response :success
  end

end
