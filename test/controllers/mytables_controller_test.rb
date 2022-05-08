require "test_helper"

class MytablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytable = mytables(:one)
  end

  test "should get index" do
    get mytables_url
    assert_response :success
  end

  test "should get new" do
    get new_mytable_url
    assert_response :success
  end

  test "should create mytable" do
    assert_difference("Mytable.count") do
      post mytables_url, params: { mytable: { email: @mytable.email, first_name: @mytable.first_name, last_name: @mytable.last_name, twitter: @mytable.twitter } }
    end

    assert_redirected_to mytable_url(Mytable.last)
  end

  test "should show mytable" do
    get mytable_url(@mytable)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytable_url(@mytable)
    assert_response :success
  end

  test "should update mytable" do
    patch mytable_url(@mytable), params: { mytable: { email: @mytable.email, first_name: @mytable.first_name, last_name: @mytable.last_name, twitter: @mytable.twitter } }
    assert_redirected_to mytable_url(@mytable)
  end

  test "should destroy mytable" do
    assert_difference("Mytable.count", -1) do
      delete mytable_url(@mytable)
    end

    assert_redirected_to mytables_url
  end
end
