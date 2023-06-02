require "test_helper"

class ReplyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reply_index_url
    assert_response :success
  end
end
