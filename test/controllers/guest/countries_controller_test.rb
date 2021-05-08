require 'test_helper'

class Guest::CountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_countries_index_url
    assert_response :success
  end

  test "should get show" do
    get guest_countries_show_url
    assert_response :success
  end

end
