class BuyersController < ApplicationController

  def new
    @buyer = Buyer.new

  end

  def create
    @buyer = Buyer.new params[:buyer]
    if @buyer.save
      redirect_to root_path
    else
      flash[:error] = "Please fill in all the mandatory fields!"
      render "new"
    end
  end


end
