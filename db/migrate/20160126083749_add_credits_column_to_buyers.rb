class AddCreditsColumnToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :credit, :integer, null: false, default: 100
  end
end
