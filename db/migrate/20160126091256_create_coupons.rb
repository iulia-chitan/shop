class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer :variant_id
      t.string :code, null: false, default: ""
      t.timestamps
    end
  end
end
