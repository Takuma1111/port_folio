require 'test_helper'

class OnseisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onsei = onseis(:one)
  end

  test "should get index" do
    get onseis_url
    assert_response :success
  end

  test "should get new" do
    get new_onsei_url
    assert_response :success
  end

  test "should create onsei" do
    assert_difference('Onsei.count') do
      post onseis_url, params: { onsei: { onsei: @onsei.onsei, text: @onsei.text, title: @onsei.title } }
    end

    assert_redirected_to onsei_url(Onsei.last)
  end

  test "should show onsei" do
    get onsei_url(@onsei)
    assert_response :success
  end

  test "should get edit" do
    get edit_onsei_url(@onsei)
    assert_response :success
  end

  test "should update onsei" do
    patch onsei_url(@onsei), params: { onsei: { onsei: @onsei.onsei, text: @onsei.text, title: @onsei.title } }
    assert_redirected_to onsei_url(@onsei)
  end

  test "should destroy onsei" do
    assert_difference('Onsei.count', -1) do
      delete onsei_url(@onsei)
    end

    assert_redirected_to onseis_url
  end
end
