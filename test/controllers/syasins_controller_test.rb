require 'test_helper'

class SyasinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syasin = syasins(:one)
  end

  test "should get index" do
    get syasins_url
    assert_response :success
  end

  test "should get new" do
    get new_syasin_url
    assert_response :success
  end

  test "should create syasin" do
    assert_difference('Syasin.count') do
      post syasins_url, params: { syasin: { syasin: @syasin.syasin, text: @syasin.text, title: @syasin.title } }
    end

    assert_redirected_to syasin_url(Syasin.last)
  end

  test "should show syasin" do
    get syasin_url(@syasin)
    assert_response :success
  end

  test "should get edit" do
    get edit_syasin_url(@syasin)
    assert_response :success
  end

  test "should update syasin" do
    patch syasin_url(@syasin), params: { syasin: { syasin: @syasin.syasin, text: @syasin.text, title: @syasin.title } }
    assert_redirected_to syasin_url(@syasin)
  end

  test "should destroy syasin" do
    assert_difference('Syasin.count', -1) do
      delete syasin_url(@syasin)
    end

    assert_redirected_to syasins_url
  end
end
