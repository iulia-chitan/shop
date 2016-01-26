class Coupon < ActiveRecord::Base
  attr_accessible :variant_id, :code

  belongs_to :variant
end