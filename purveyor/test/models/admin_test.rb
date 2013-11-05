require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test "should have something in username" do
    admin = Admin.new
    assert !admin.save, "Saved without a username"
  end



end
