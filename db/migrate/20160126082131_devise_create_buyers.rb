class DeviseCreateBuyers < ActiveRecord::Migration
  def change
    create_table(:buyers) do |t|
      ## Database authenticatable
      t.string :name,               null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.timestamps null: false
    end

    add_index :buyers, :email

  end
end
