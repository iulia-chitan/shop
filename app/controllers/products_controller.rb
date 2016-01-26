class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def buy_product
    @variant = Variant.where(id: params[:variant_id]).first
    @product = @variant.product
    @buyer = current_user
    @variant.update_attributes(quantity: (@variant.quantity-1)) if @buyer && @buyer.credit >= @variant.price
    Coupon.create(variant_id: @variant.id, code: Coupon.generate_new_code)
    redirect_to action: 'index'
  end
end
