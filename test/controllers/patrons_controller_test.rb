require 'test_helper'

class PatronsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patrons_index_url
    assert_response :success
  end

  test "should get show" do
    get patrons_show_url
    assert_response :success
  end

  test "should get new" do
    get patrons_new_url
    assert_response :success
  end

  test "should get edit" do
    get patrons_edit_url
    assert_response :success
  end

end
