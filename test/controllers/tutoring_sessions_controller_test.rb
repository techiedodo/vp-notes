require 'test_helper'

class TutoringSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutoring_sessions_index_url
    assert_response :success
  end

  test "should get show" do
    get tutoring_sessions_show_url
    assert_response :success
  end

  test "should get new" do
    get tutoring_sessions_new_url
    assert_response :success
  end

  test "should get edit" do
    get tutoring_sessions_edit_url
    assert_response :success
  end

end
