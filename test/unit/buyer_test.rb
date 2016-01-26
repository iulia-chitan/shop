require 'test_helper'

class BuyerTest < ActiveSupport::TestCase
  test "invalid with no name" do
    buyer = Buyer.new(email: "test1@test.com", password: "test")
    assert_equal false, buyer.valid?
  end

  test "invalid with no email" do
    buyer1 = Buyer.new(name: "Test", password: "test" )
    assert_equal false, buyer1.valid?
  end

  test "invalid with no password" do
    buyer2 =Buyer.new(email: "test4@test.com",name: "Test")
    assert_equal false, buyer2.valid?
  end

end
