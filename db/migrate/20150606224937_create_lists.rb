class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :supermarket, null: false, default: 'N/D'

      t.timestamps null: false
    end
  end
end
