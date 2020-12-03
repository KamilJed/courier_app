require 'test_helper'

class AppRootControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_root_index_url
    assert_response :success
  end

end
