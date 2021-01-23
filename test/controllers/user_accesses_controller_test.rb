require 'test_helper'

class UserAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_access = user_accesses(:one)
  end

  test "should get index" do
    get user_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_user_access_url
    assert_response :success
  end

  test "should create user_access" do
    assert_difference('UserAccess.count') do
      post user_accesses_url, params: { user_access: { responsibility: @user_access.responsibility, username: @user_access.username } }
    end

    assert_redirected_to user_access_url(UserAccess.last)
  end

  test "should show user_access" do
    get user_access_url(@user_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_access_url(@user_access)
    assert_response :success
  end

  test "should update user_access" do
    patch user_access_url(@user_access), params: { user_access: { responsibility: @user_access.responsibility, username: @user_access.username } }
    assert_redirected_to user_access_url(@user_access)
  end

  test "should destroy user_access" do
    assert_difference('UserAccess.count', -1) do
      delete user_access_url(@user_access)
    end

    assert_redirected_to user_accesses_url
  end
end
