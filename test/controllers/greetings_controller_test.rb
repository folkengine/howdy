require "test_helper"

class GreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get howdy" do
    get greetings_howdy_url
    assert_response :success
  end
end
