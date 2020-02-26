require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goods_index_url
    assert_response :success
  end

  test "should get show" do
    get goods_show_url
    assert_response :success
  end

  test "should get create" do
    get goods_create_url
    assert_response :success
  end

  test "should get destroy" do
    get goods_destroy_url
    assert_response :success
  end

end
