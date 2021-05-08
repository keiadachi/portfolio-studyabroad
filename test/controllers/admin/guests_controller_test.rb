require 'test_helper'

class Admin::GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_guests_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_guests_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_guests_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_guests_update_url
    assert_response :success
  end

  test "should get quit" do
    get admin_guests_quit_url
    assert_response :success
  end

  test "should get out" do
    get admin_guests_out_url
    assert_response :success
  end

end
