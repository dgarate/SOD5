require 'test_helper'

class UserConflictsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_conflict = user_conflicts(:one)
  end

  test "should get index" do
    get user_conflicts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_conflict_url
    assert_response :success
  end

  test "should create user_conflict" do
    assert_difference('UserConflict.count') do
      post user_conflicts_url, params: { user_conflict: { conflict_id: @user_conflict.conflict_id, user_access_id: @user_conflict.user_access_id } }
    end

    assert_redirected_to user_conflict_url(UserConflict.last)
  end

  test "should show user_conflict" do
    get user_conflict_url(@user_conflict)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_conflict_url(@user_conflict)
    assert_response :success
  end

  test "should update user_conflict" do
    patch user_conflict_url(@user_conflict), params: { user_conflict: { conflict_id: @user_conflict.conflict_id, user_access_id: @user_conflict.user_access_id } }
    assert_redirected_to user_conflict_url(@user_conflict)
  end

  test "should destroy user_conflict" do
    assert_difference('UserConflict.count', -1) do
      delete user_conflict_url(@user_conflict)
    end

    assert_redirected_to user_conflicts_url
  end
end
