require 'test_helper'

class UserResponsibilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_responsibility = user_responsibilities(:one)
  end

  test "should get index" do
    get user_responsibilities_url
    assert_response :success
  end

  test "should get new" do
    get new_user_responsibility_url
    assert_response :success
  end

  test "should create user_responsibility" do
    assert_difference('UserResponsibility.count') do
      post user_responsibilities_url, params: { user_responsibility: { responsibility_id: @user_responsibility.responsibility_id, user_access_id: @user_responsibility.user_access_id } }
    end

    assert_redirected_to user_responsibility_url(UserResponsibility.last)
  end

  test "should show user_responsibility" do
    get user_responsibility_url(@user_responsibility)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_responsibility_url(@user_responsibility)
    assert_response :success
  end

  test "should update user_responsibility" do
    patch user_responsibility_url(@user_responsibility), params: { user_responsibility: { responsibility_id: @user_responsibility.responsibility_id, user_access_id: @user_responsibility.user_access_id } }
    assert_redirected_to user_responsibility_url(@user_responsibility)
  end

  test "should destroy user_responsibility" do
    assert_difference('UserResponsibility.count', -1) do
      delete user_responsibility_url(@user_responsibility)
    end

    assert_redirected_to user_responsibilities_url
  end
end
