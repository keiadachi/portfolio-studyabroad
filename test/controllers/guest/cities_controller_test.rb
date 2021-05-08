require 'test_helper'

class Guest::CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get guest_cities_show_url
    assert_response :success
  end

end
