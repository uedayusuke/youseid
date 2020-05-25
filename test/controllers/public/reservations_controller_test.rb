require 'test_helper'

class Public::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get finish" do
    get public_reservations_finish_url
    assert_response :success
  end

end
