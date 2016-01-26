class Product < ActiveRecord::Base
  attr_accessible :title, :description

  has_many :variants, dependent: :destroy
end
