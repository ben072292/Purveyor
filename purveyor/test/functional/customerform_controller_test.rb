require 'test_helper'

class CustomerFormControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def setup
    @controller = customerform_controller
  end
  test "Should get index" do
    get :index
    assert true
  end
end
