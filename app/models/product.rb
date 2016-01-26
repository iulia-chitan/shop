class Product < ActiveRecord::Base
  attr_accessible :title, :description

  has_many :variants, dependent: :destroy

  validates_presence_of :title


  scope :available_products, lambda {
         where("products.id IN (SELECT DISTINCT(product_id) FROM variants WHERE is_active IS TRUE AND quantity > 0) ").
         order("products.title ASC")
  }




  def best_price_variant
    return self.variants.where("quantity > 0").order("price ASC").first
  end
end
