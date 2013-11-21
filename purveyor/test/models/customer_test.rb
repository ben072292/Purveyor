require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  test "should have a name" do
    customer = Customer.new
    assert !customer.save, "Saved without a name"
  end
  
end
