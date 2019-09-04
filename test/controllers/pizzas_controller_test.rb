require 'test_helper'

class PizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pizzas_index_url
    assert_response :success
  end

  test "should get show" do
    get pizzas_show_url
    assert_response :success
  end

  test "should get new" do
    get pizzas_new_url
    assert_response :success
  end

  test "should get edit" do
    get pizzas_edit_url
    assert_response :success
  end

end
