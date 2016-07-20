require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "VP Tut-Notes: Free-Up Some Time"
  end

  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get contact" do
    get welcome_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
