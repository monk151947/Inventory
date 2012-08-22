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

ActiveRecord::Schema.define(:version => 20120821155824) do

  create_table "indent_items", :force => true do |t|
    t.integer  "indent_id"
    t.integer  "store_item_id"
    t.decimal  "price",         :precision => 10, :scale => 0
    t.integer  "issued"
    t.integer  "pending"
    t.integer  "required"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "indent_items", ["indent_id"], :name => "index_indent_items_on_indent_id"
  add_index "indent_items", ["store_item_id"], :name => "index_indent_items_on_store_item_id"

  create_table "indents", :force => true do |t|
    t.integer  "indent_no"
    t.string   "name"
    t.integer  "store_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "indents", ["store_id"], :name => "index_indents_on_store_id"

  create_table "store_categories", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "store_items", :force => true do |t|
    t.string   "name"
    t.integer  "store_type_id"
    t.integer  "store_id"
    t.integer  "store_category_id"
    t.decimal  "price",             :precision => 10, :scale => 0
    t.integer  "quantity"
    t.decimal  "tax",               :precision => 10, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "store_items", ["store_category_id"], :name => "index_store_items_on_store_category_id"
  add_index "store_items", ["store_id"], :name => "index_store_items_on_store_id"
  add_index "store_items", ["store_type_id"], :name => "index_store_items_on_store_type_id"

  create_table "store_types", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
