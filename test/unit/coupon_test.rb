require 'test_helper'

class CouponTest < ActiveSupport::TestCase
  test "invalid with no code" do
    coupon = Coupon.new(variant_id: 1)
    assert_equal false, coupon.valid?
  end


end
