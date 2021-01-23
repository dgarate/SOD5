require "application_system_test_case"

class UserAccessesTest < ApplicationSystemTestCase
  setup do
    @user_access = user_accesses(:one)
  end

  test "visiting the index" do
    visit user_accesses_url
    assert_selector "h1", text: "User Accesses"
  end

  test "creating a User access" do
    visit user_accesses_url
    click_on "New User Access"

    fill_in "Responsibility", with: @user_access.responsibility
    fill_in "Username", with: @user_access.username
    click_on "Create User access"

    assert_text "User access was successfully created"
    click_on "Back"
  end

  test "updating a User access" do
    visit user_accesses_url
    click_on "Edit", match: :first

    fill_in "Responsibility", with: @user_access.responsibility
    fill_in "Username", with: @user_access.username
    click_on "Update User access"

    assert_text "User access was successfully updated"
    click_on "Back"
  end

  test "destroying a User access" do
    visit user_accesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User access was successfully destroyed"
  end
end
