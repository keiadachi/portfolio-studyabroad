require 'test_helper'

class Guest::MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get guest_maps_map_url
    assert_response :success
  end

end
