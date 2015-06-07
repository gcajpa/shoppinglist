class List < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :products, through: :orders

  accepts_nested_attributes_for :orders, allow_destroy: true
  accepts_nested_attributes_for :products
end
