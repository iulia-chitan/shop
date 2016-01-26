# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160126112251) do

  create_table "buyers", :force => true do |t|
    t.string   "name",                                              :default => "",  :null => false
    t.string   "email",                                             :default => "",  :null => false
    t.string   "encrypted_password",                                :default => "",  :null => false
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
    t.decimal  "credit",             :precision => 10, :scale => 0, :default => 100, :null => false
  end

  add_index "buyers", ["email"], :name => "index_buyers_on_email"

  create_table "coupons", :force => true do |t|
    t.integer  "variant_id"
    t.string   "code",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.text     "description",                 :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "variants", :force => true do |t|
    t.integer  "product_id"
    t.boolean  "is_active",                                 :default => true, :null => false
    t.decimal  "price",      :precision => 10, :scale => 0, :default => 0,    :null => false
    t.integer  "quantity",                                  :default => 0,    :null => false
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

end
