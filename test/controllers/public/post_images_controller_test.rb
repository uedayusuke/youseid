require 'test_helper'

class Public::PostImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_images_index_url
    assert_response :success
  end

  test "should get show" do
    get public_post_images_show_url
    assert_response :success
  end

end
