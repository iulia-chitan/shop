class Product < ActiveRecord::Base
  attr_accessible :title, :description

  has_many :variants, dependent: :destroy

  validates_presence_of :title
end
