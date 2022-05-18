require "test_helper"

class Covid19sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid_19 = covid_19s(:one)
  end

  test "should get index" do
    get covid_19s_url
    assert_response :success
  end

  test "should get new" do
    get new_covid_19_url
    assert_response :success
  end

  test "should create covid_19" do
    assert_difference("Covid19.count") do
      post covid_19s_url, params: { covid_19: { BEN: @covid_19.BEN, GEN: @covid_19.GEN, cases7_bl_per_100k: @covid_19.cases7_bl_per_100k, cases7_per_100k: @covid_19.cases7_per_100k, death_rate: @covid_19.death_rate } }
    end

    assert_redirected_to covid_19_url(Covid19.last)
  end

  test "should show covid_19" do
    get covid_19_url(@covid_19)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid_19_url(@covid_19)
    assert_response :success
  end

  test "should update covid_19" do
    patch covid_19_url(@covid_19), params: { covid_19: { BEN: @covid_19.BEN, GEN: @covid_19.GEN, cases7_bl_per_100k: @covid_19.cases7_bl_per_100k, cases7_per_100k: @covid_19.cases7_per_100k, death_rate: @covid_19.death_rate } }
    assert_redirected_to covid_19_url(@covid_19)
  end

  test "should destroy covid_19" do
    assert_difference("Covid19.count", -1) do
      delete covid_19_url(@covid_19)
    end

    assert_redirected_to covid_19s_url
  end
end
