require "test_helper"

class CovidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid = covids(:one)
  end

  test "should get index" do
    get covids_url
    assert_response :success
  end

  test "should get new" do
    get new_covid_url
    assert_response :success
  end

  test "should create covid" do
    assert_difference("Covid.count") do
      post covids_url, params: { covid: { BEN: @covid.BEN, GEN: @covid.GEN, cases7_bl_per_100k: @covid.cases7_bl_per_100k, cases7_per_100k: @covid.cases7_per_100k, death_rate: @covid.death_rate } }
    end

    assert_redirected_to covid_url(Covid.last)
  end

  test "should show covid" do
    get covid_url(@covid)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid_url(@covid)
    assert_response :success
  end

  test "should update covid" do
    patch covid_url(@covid), params: { covid: { BEN: @covid.BEN, GEN: @covid.GEN, cases7_bl_per_100k: @covid.cases7_bl_per_100k, cases7_per_100k: @covid.cases7_per_100k, death_rate: @covid.death_rate } }
    assert_redirected_to covid_url(@covid)
  end

  test "should destroy covid" do
    assert_difference("Covid.count", -1) do
      delete covid_url(@covid)
    end

    assert_redirected_to covids_url
  end
end
