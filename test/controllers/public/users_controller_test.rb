require 'test_helper'

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_users_top_url
    assert_response :success
  end

  test "should get about" do
    get public_users_about_url
    assert_response :success
  end

  test "should get show" do
    get public_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_users_edit_url
    assert_response :success
  end

  test "should get cancel" do
    get public_users_cancel_url
    assert_response :success
  end

end
