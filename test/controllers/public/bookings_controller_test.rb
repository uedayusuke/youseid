require 'test_helper'

class Public::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_bookings_new_url
    assert_response :success
  end

  test "should get finish" do
    get public_bookings_finish_url
    assert_response :success
  end

end
