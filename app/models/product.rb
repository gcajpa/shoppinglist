class Product < ActiveRecord::Base
  default_scope { order('name') }

  has_many :orders, dependent: :destroy
  has_many :lists, through: :orders

  validates :name, uniqueness: true, presence: true
end
