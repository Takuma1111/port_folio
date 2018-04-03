require 'test_helper'

class PhotenewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photenews_index_url
    assert_response :success
  end

  test "should get new" do
    get photenews_new_url
    assert_response :success
  end

  test "should get create" do
    get photenews_create_url
    assert_response :success
  end

  test "should get edit" do
    get photenews_edit_url
    assert_response :success
  end

  test "should get update" do
    get photenews_update_url
    assert_response :success
  end

  test "should get show" do
    get photenews_show_url
    assert_response :success
  end

  test "should get destroy" do
    get photenews_destroy_url
    assert_response :success
  end

end
