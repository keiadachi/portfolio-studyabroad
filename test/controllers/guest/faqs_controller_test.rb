require 'test_helper'

class Guest::FaqsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_faqs_index_url
    assert_response :success
  end

end
