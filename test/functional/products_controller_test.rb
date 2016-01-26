require 'test_helper'
include Devise::TestHelpers

class ProductsControllerTest < ActionController::TestCase
  test "index should display products" do
    @product = Product.create(title: "Test product")
    @variant = @product.variants.create(price: 12.0, quantity:1, is_active:false)
    @variant2 = @product.variants.create(price: 14.0, quantity:1, is_active:true)
    @buyer = Buyer.create(email: "test1@test.com", password: "test", password_confirmation: "test", name:"Test")
    sign_in @buyer
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "buy product method" do
    @product = Product.create(title: "Test product")
    @variant = @product.variants.create(price: 12.0, quantity:1, is_active:false)
    @variant2 = @product.variants.create(price: 14.0, quantity:1, is_active:true)
    @buyer = Buyer.create(email: "test1@test.com", password: "test", password_confirmation: "test", name:"Test")
    sign_in @buyer
    put :buy_product, {variant_id: @variant2.id}
    assert_redirected_to products_url
    assert_not_nil Coupon.first
  end



end
