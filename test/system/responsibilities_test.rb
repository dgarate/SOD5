require "application_system_test_case"

class ResponsibilitiesTest < ApplicationSystemTestCase
  setup do
    @responsibility = responsibilities(:one)
  end

  test "visiting the index" do
    visit responsibilities_url
    assert_selector "h1", text: "Responsibilities"
  end

  test "creating a Responsibility" do
    visit responsibilities_url
    click_on "New Responsibility"

    fill_in "Cycle", with: @responsibility.cycle_id
    fill_in "Description", with: @responsibility.description
    fill_in "End date", with: @responsibility.end_date
    fill_in "Name", with: @responsibility.name
    fill_in "Type", with: @responsibility.type
    click_on "Create Responsibility"

    assert_text "Responsibility was successfully created"
    click_on "Back"
  end

  test "updating a Responsibility" do
    visit responsibilities_url
    click_on "Edit", match: :first

    fill_in "Cycle", with: @responsibility.cycle_id
    fill_in "Description", with: @responsibility.description
    fill_in "End date", with: @responsibility.end_date
    fill_in "Name", with: @responsibility.name
    fill_in "Type", with: @responsibility.type
    click_on "Update Responsibility"

    assert_text "Responsibility was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsibility" do
    visit responsibilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsibility was successfully destroyed"
  end
end
