class Product < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :lists, through: :orders

  validates :name, uniqueness: true, presence: true
end
