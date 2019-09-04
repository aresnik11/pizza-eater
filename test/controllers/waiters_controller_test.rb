require 'test_helper'

class WaitersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get waiters_index_url
    assert_response :success
  end

  test "should get show" do
    get waiters_show_url
    assert_response :success
  end

  test "should get new" do
    get waiters_new_url
    assert_response :success
  end

  test "should get edit" do
    get waiters_edit_url
    assert_response :success
  end

end
