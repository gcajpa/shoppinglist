class Product < ActiveRecord::Base
  has_many :orders
  has_many :lists, through: :orders
end
