class Product < ActiveRecord::Base
  attr_accessible :title, :description

  has_many :variants, dependent: :destroy

  validates_presence_of :title



  def best_price_variant
    return self.variants.where("quantity > 0").order("price ASC").first
  end
end
