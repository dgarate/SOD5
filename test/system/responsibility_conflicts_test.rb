require "application_system_test_case"

class ResponsibilityConflictsTest < ApplicationSystemTestCase
  setup do
    @responsibility_conflict = responsibility_conflicts(:one)
  end

  test "visiting the index" do
    visit responsibility_conflicts_url
    assert_selector "h1", text: "Responsibility Conflicts"
  end

  test "creating a Responsibility conflict" do
    visit responsibility_conflicts_url
    click_on "New Responsibility Conflict"

    fill_in "Control", with: @responsibility_conflict.control
    fill_in "Responsibility", with: @responsibility_conflict.responsibility_id
    click_on "Create Responsibility conflict"

    assert_text "Responsibility conflict was successfully created"
    click_on "Back"
  end

  test "updating a Responsibility conflict" do
    visit responsibility_conflicts_url
    click_on "Edit", match: :first

    fill_in "Control", with: @responsibility_conflict.control
    fill_in "Responsibility", with: @responsibility_conflict.responsibility_id
    click_on "Update Responsibility conflict"

    assert_text "Responsibility conflict was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsibility conflict" do
    visit responsibility_conflicts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsibility conflict was successfully destroyed"
  end
end
