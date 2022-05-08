require "application_system_test_case"

class MytablesTest < ApplicationSystemTestCase
  setup do
    @mytable = mytables(:one)
  end

  test "visiting the index" do
    visit mytables_url
    assert_selector "h1", text: "Mytables"
  end

  test "should create mytable" do
    visit mytables_url
    click_on "New mytable"

    fill_in "Email", with: @mytable.email
    fill_in "First name", with: @mytable.first_name
    fill_in "Last name", with: @mytable.last_name
    fill_in "Twitter", with: @mytable.twitter
    click_on "Create Mytable"

    assert_text "Mytable was successfully created"
    click_on "Back"
  end

  test "should update Mytable" do
    visit mytable_url(@mytable)
    click_on "Edit this mytable", match: :first

    fill_in "Email", with: @mytable.email
    fill_in "First name", with: @mytable.first_name
    fill_in "Last name", with: @mytable.last_name
    fill_in "Twitter", with: @mytable.twitter
    click_on "Update Mytable"

    assert_text "Mytable was successfully updated"
    click_on "Back"
  end

  test "should destroy Mytable" do
    visit mytable_url(@mytable)
    click_on "Destroy this mytable", match: :first

    assert_text "Mytable was successfully destroyed"
  end
end
