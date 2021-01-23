require "application_system_test_case"

class UserConflictsTest < ApplicationSystemTestCase
  setup do
    @user_conflict = user_conflicts(:one)
  end

  test "visiting the index" do
    visit user_conflicts_url
    assert_selector "h1", text: "User Conflicts"
  end

  test "creating a User conflict" do
    visit user_conflicts_url
    click_on "New User Conflict"

    fill_in "Conflict", with: @user_conflict.conflict_id
    fill_in "User access", with: @user_conflict.user_access_id
    click_on "Create User conflict"

    assert_text "User conflict was successfully created"
    click_on "Back"
  end

  test "updating a User conflict" do
    visit user_conflicts_url
    click_on "Edit", match: :first

    fill_in "Conflict", with: @user_conflict.conflict_id
    fill_in "User access", with: @user_conflict.user_access_id
    click_on "Update User conflict"

    assert_text "User conflict was successfully updated"
    click_on "Back"
  end

  test "destroying a User conflict" do
    visit user_conflicts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User conflict was successfully destroyed"
  end
end
