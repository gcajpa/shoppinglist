class Order < ActiveRecord::Base
  belongs_to :list
  belongs_to :product

  accepts_nested_attributes_for :product
end
