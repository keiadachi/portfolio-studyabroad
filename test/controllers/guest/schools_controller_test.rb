require 'test_helper'

class Guest::SchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get guest_schools_show_url
    assert_response :success
  end

end
