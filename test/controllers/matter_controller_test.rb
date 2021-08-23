require "test_helper"

class MatterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matter_index_url
    assert_response :success
  end
end
