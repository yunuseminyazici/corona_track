require "application_system_test_case"

class CovidsTest < ApplicationSystemTestCase
  setup do
    @covid = covids(:one)
  end

  test "visiting the index" do
    visit covids_url
    assert_selector "h1", text: "Covids"
  end

  test "should create covid" do
    visit covids_url
    click_on "New covid"

    fill_in "Ben", with: @covid.BEN
    fill_in "Gen", with: @covid.GEN
    fill_in "Cases7 bl per 100k", with: @covid.cases7_bl_per_100k
    fill_in "Cases7 per 100k", with: @covid.cases7_per_100k
    fill_in "Death rate", with: @covid.death_rate
    click_on "Create Covid"

    assert_text "Covid was successfully created"
    click_on "Back"
  end

  test "should update Covid" do
    visit covid_url(@covid)
    click_on "Edit this covid", match: :first

    fill_in "Ben", with: @covid.BEN
    fill_in "Gen", with: @covid.GEN
    fill_in "Cases7 bl per 100k", with: @covid.cases7_bl_per_100k
    fill_in "Cases7 per 100k", with: @covid.cases7_per_100k
    fill_in "Death rate", with: @covid.death_rate
    click_on "Update Covid"

    assert_text "Covid was successfully updated"
    click_on "Back"
  end

  test "should destroy Covid" do
    visit covid_url(@covid)
    click_on "Destroy this covid", match: :first

    assert_text "Covid was successfully destroyed"
  end
end
