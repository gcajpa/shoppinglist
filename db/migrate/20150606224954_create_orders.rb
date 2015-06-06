class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :list, index: true
      t.references :product, index: true
      t.integer :qt, null: false, default: 1
      t.float :price, null: false, default: 0.0

      t.timestamps null: false
    end
    add_foreign_key :orders, :lists
    add_foreign_key :orders, :products
  end
end
