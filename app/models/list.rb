class List < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders

  accepts_nested_attributes_for :orders, allow_destroy: true
  accepts_nested_attributes_for :products
end
