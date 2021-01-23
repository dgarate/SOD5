require "application_system_test_case"

class ConflictsTest < ApplicationSystemTestCase
  setup do
    @conflict = conflicts(:one)
  end

  test "visiting the index" do
    visit conflicts_url
    assert_selector "h1", text: "Conflicts"
  end

  test "creating a Conflict" do
    visit conflicts_url
    click_on "New Conflict"

    fill_in "Cycle", with: @conflict.cycle_id
    fill_in "Description", with: @conflict.description
    fill_in "End date", with: @conflict.end_date
    fill_in "Name", with: @conflict.name
    click_on "Create Conflict"

    assert_text "Conflict was successfully created"
    click_on "Back"
  end

  test "updating a Conflict" do
    visit conflicts_url
    click_on "Edit", match: :first

    fill_in "Cycle", with: @conflict.cycle_id
    fill_in "Description", with: @conflict.description
    fill_in "End date", with: @conflict.end_date
    fill_in "Name", with: @conflict.name
    click_on "Update Conflict"

    assert_text "Conflict was successfully updated"
    click_on "Back"
  end

  test "destroying a Conflict" do
    visit conflicts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conflict was successfully destroyed"
  end
end
