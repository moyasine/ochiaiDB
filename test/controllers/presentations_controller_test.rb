require 'test_helper'

class PresentationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presentations_index_url
    assert_response :success
  end

  test "should get upload" do
    get presentations_upload_url
    assert_response :success
  end

end
