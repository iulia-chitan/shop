class Variant < ActiveRecord::Base
  attr_accessible :product_id, :is_active, :price, :quantity

  belongs_to :product
  has_many :coupons, dependent: :destroy

  validates_presence_of :price, :quantity, :is_active
end
