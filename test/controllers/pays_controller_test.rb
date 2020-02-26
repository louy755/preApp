require 'test_helper'

class PaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pays_index_url
    assert_response :success
  end

end
