class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.integer :product_id
      t.boolean :is_active, null: false, default: true
      t.decimal :price, null: false, default: 0.0
      t.integer :quantity, null: false, default: 0
      t.timestamps
    end
  end
end