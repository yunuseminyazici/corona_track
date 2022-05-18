require "application_system_test_case"

class Covid19sTest < ApplicationSystemTestCase
  setup do
    @covid_19 = covid_19s(:one)
  end

  test "visiting the index" do
    visit covid_19s_url
    assert_selector "h1", text: "Covid 19s"
  end

  test "should create covid 19" do
    visit covid_19s_url
    click_on "New covid 19"

    fill_in "Ben", with: @covid_19.BEN
    fill_in "Gen", with: @covid_19.GEN
    fill_in "Cases7 bl per 100k", with: @covid_19.cases7_bl_per_100k
    fill_in "Cases7 per 100k", with: @covid_19.cases7_per_100k
    fill_in "Death rate", with: @covid_19.death_rate
    click_on "Create Covid 19"

    assert_text "Covid 19 was successfully created"
    click_on "Back"
  end

  test "should update Covid 19" do
    visit covid_19_url(@covid_19)
    click_on "Edit this covid 19", match: :first

    fill_in "Ben", with: @covid_19.BEN
    fill_in "Gen", with: @covid_19.GEN
    fill_in "Cases7 bl per 100k", with: @covid_19.cases7_bl_per_100k
    fill_in "Cases7 per 100k", with: @covid_19.cases7_per_100k
    fill_in "Death rate", with: @covid_19.death_rate
    click_on "Update Covid 19"

    assert_text "Covid 19 was successfully updated"
    click_on "Back"
  end

  test "should destroy Covid 19" do
    visit covid_19_url(@covid_19)
    click_on "Destroy this covid 19", match: :first

    assert_text "Covid 19 was successfully destroyed"
  end
end
