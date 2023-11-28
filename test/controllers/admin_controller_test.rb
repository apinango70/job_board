require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get create_user" do
    get admin_create_user_url
    assert_response :success
  end

  test "should get edit_user" do
    get admin_edit_user_url
    assert_response :success
  end

  test "should get list_user" do
    get admin_list_user_url
    assert_response :success
  end

  test "should get _form" do
    get admin__form_url
    assert_response :success
  end
end
