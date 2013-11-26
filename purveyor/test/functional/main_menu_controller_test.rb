require 'test_helper'

class MainMenuControllerTest < ActionController::TestCase
  setup do
    sign_in(admins(:one))
  end

  # Replace this with your real tests.
  test "make sure root route works" do
    get :index, nil
    assert_response :success
    assert_select 'title', "Main Menu"
  end
end
