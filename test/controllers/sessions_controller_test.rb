require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessions_index_url
    assert_response :success
  end

  test "should get show" do
    get sessions_show_url
    assert_response :success
  end

  test "should get new" do
    get sessions_new_url
    assert_response :success
  end

  test "should get edit" do
    get sessions_edit_url
    assert_response :success
  end

end
