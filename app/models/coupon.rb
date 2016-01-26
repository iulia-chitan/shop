class Coupon < ActiveRecord::Base
  attr_accessible :variant_id, :code

  belongs_to :variant

  validates_presence_of :code

  def self.generate_new_code
    return Array.new(n){[*"A".."Z", *"0".."9"].sample}.join
  end
end