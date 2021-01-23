require 'test_helper'

class ResponsibilityConflictsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsibility_conflict = responsibility_conflicts(:one)
  end

  test "should get index" do
    get responsibility_conflicts_url
    assert_response :success
  end

  test "should get new" do
    get new_responsibility_conflict_url
    assert_response :success
  end

  test "should create responsibility_conflict" do
    assert_difference('ResponsibilityConflict.count') do
      post responsibility_conflicts_url, params: { responsibility_conflict: { control: @responsibility_conflict.control, responsibility_id: @responsibility_conflict.responsibility_id } }
    end

    assert_redirected_to responsibility_conflict_url(ResponsibilityConflict.last)
  end

  test "should show responsibility_conflict" do
    get responsibility_conflict_url(@responsibility_conflict)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsibility_conflict_url(@responsibility_conflict)
    assert_response :success
  end

  test "should update responsibility_conflict" do
    patch responsibility_conflict_url(@responsibility_conflict), params: { responsibility_conflict: { control: @responsibility_conflict.control, responsibility_id: @responsibility_conflict.responsibility_id } }
    assert_redirected_to responsibility_conflict_url(@responsibility_conflict)
  end

  test "should destroy responsibility_conflict" do
    assert_difference('ResponsibilityConflict.count', -1) do
      delete responsibility_conflict_url(@responsibility_conflict)
    end

    assert_redirected_to responsibility_conflicts_url
  end
end
