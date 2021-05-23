require 'test_helper'

class Guest::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get guest_searches_search_url
    assert_response :success
  end

end
