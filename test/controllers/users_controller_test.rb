require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  test "should get index" do
    get users_index_url
    assert_response :redirect
  end
end
