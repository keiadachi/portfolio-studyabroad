require 'test_helper'

class Guest::BrochuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_brochures_index_url
    assert_response :success
  end

end
