require 'test_helper'

class DesignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get design_index_url
    assert_response :success
  end

  test "should get show" do
    get design_show_url
    assert_response :success
  end

  test "should get new" do
    get design_new_url
    assert_response :success
  end

  test "should get edit" do
    get design_edit_url
    assert_response :success
  end

end
