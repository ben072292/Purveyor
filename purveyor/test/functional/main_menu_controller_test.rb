require 'test_helper'

class MainMenuControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "make sure root route works" do
    get :index
    assert_request :success
  end
end
