class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  before_filter :check_buyer


  def index
    @products = Product.available_products
  end

  def buy_product
    @variant = Variant.where(id: params[:variant_id]).first
    @product = @variant.product
    @buyer = current_buyer
    @variant.update_attributes(quantity: (@variant.quantity-1)) if @buyer && @buyer.credit >= @variant.price
    @buyer.update_attributes(credit: (@buyer.credit-@variant.price))
    Coupon.create(variant_id: @variant.id, code: Coupon.generate_new_code)
    redirect_to action: 'index'
  end


  protected

  def check_buyer
    unless buyer_signed_in?
      redirect_to '/'
    end
  end

end
