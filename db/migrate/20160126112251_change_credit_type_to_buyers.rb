class ChangeCreditTypeToBuyers < ActiveRecord::Migration
  def up
    change_column :buyers, :credit, :decimal, null: false, default: 100.0
  end

  def down
    change_column :buyers, :credit, :integer, null: false, default: 100
  end
end
