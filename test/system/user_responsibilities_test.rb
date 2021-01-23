require "application_system_test_case"

class UserResponsibilitiesTest < ApplicationSystemTestCase
  setup do
    @user_responsibility = user_responsibilities(:one)
  end

  test "visiting the index" do
    visit user_responsibilities_url
    assert_selector "h1", text: "User Responsibilities"
  end

  test "creating a User responsibility" do
    visit user_responsibilities_url
    click_on "New User Responsibility"

    fill_in "Responsibility", with: @user_responsibility.responsibility_id
    fill_in "User access", with: @user_responsibility.user_access_id
    click_on "Create User responsibility"

    assert_text "User responsibility was successfully created"
    click_on "Back"
  end

  test "updating a User responsibility" do
    visit user_responsibilities_url
    click_on "Edit", match: :first

    fill_in "Responsibility", with: @user_responsibility.responsibility_id
    fill_in "User access", with: @user_responsibility.user_access_id
    click_on "Update User responsibility"

    assert_text "User responsibility was successfully updated"
    click_on "Back"
  end

  test "destroying a User responsibility" do
    visit user_responsibilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User responsibility was successfully destroyed"
  end
end
