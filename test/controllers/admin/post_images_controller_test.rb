require 'test_helper'

class Admin::PostImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_post_images_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_post_images_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_post_images_edit_url
    assert_response :success
  end

end
