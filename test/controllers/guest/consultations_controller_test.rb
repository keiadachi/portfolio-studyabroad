require 'test_helper'

class Guest::ConsultationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_consultations_index_url
    assert_response :success
  end

end
