require 'test_helper'

class DougasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @douga = dougas(:one)
  end

  test "should get index" do
    get dougas_url
    assert_response :success
  end

  test "should get new" do
    get new_douga_url
    assert_response :success
  end

  test "should create douga" do
    assert_difference('Douga.count') do
      post dougas_url, params: { douga: { douga: @douga.douga, text: @douga.text, title: @douga.title } }
    end

    assert_redirected_to douga_url(Douga.last)
  end

  test "should show douga" do
    get douga_url(@douga)
    assert_response :success
  end

  test "should get edit" do
    get edit_douga_url(@douga)
    assert_response :success
  end

  test "should update douga" do
    patch douga_url(@douga), params: { douga: { douga: @douga.douga, text: @douga.text, title: @douga.title } }
    assert_redirected_to douga_url(@douga)
  end

  test "should destroy douga" do
    assert_difference('Douga.count', -1) do
      delete douga_url(@douga)
    end

    assert_redirected_to dougas_url
  end
end
