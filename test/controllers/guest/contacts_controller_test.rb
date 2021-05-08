require 'test_helper'

class Guest::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_contacts_index_url
    assert_response :success
  end

end
