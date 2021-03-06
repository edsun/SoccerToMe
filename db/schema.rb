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

ActiveRecord::Schema.define(:version => 20121122191536) do

  create_table "addresses", :force => true do |t|
    t.boolean  "main_address"
    t.string   "street_no"
    t.string   "street_name"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "customer_id"
    t.string   "province_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.integer  "address_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "Image_url"
    t.string   "alt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "product_id"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "Name"
    t.text     "Description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.decimal  "quantity"
    t.decimal  "gst_rate"
    t.decimal  "pst_rate"
    t.decimal  "hst_rate"
    t.string   "order_status"
    t.integer  "customer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "product_orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "quantity"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "Name"
    t.decimal  "Stock_quantity"
    t.decimal  "Price"
    t.text     "Description"
    t.string   "image_url"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "category_id"
    t.integer  "manufacturer_id"
    t.decimal  "sale_price"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.decimal  "gst_rate"
    t.decimal  "hst_rate"
    t.decimal  "pst_rate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string   "Title"
    t.text     "Body"
    t.decimal  "Rating"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "Product_ID"
  end

end
