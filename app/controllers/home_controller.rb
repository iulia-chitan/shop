class HomeController < ApplicationController
  skip_before_filter :check_buyer, :only => :index


  def index
  end
end
