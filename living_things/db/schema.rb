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

ActiveRecord::Schema.define(:version => 20130602230343) do

  create_table "adverts", :force => true do |t|
    t.string   "headline"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "active"
    t.integer  "price_in_cents"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "adverts", ["user_id"], :name => "index_adverts_on_user_id"

  create_table "adverts_categories", :id => false, :force => true do |t|
    t.integer "advert_id"
    t.integer "category_id"
  end

  add_index "adverts_categories", ["advert_id"], :name => "index_adverts_categories_on_advert_id"
  add_index "adverts_categories", ["category_id"], :name => "index_adverts_categories_on_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "histories", :force => true do |t|
    t.integer  "advert_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "histories", ["advert_id"], :name => "index_histories_on_advert_id"

  create_table "likes", :force => true do |t|
    t.integer  "fan_id"
    t.integer  "advert_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["advert_id"], :name => "index_likes_on_advert_id"
  add_index "likes", ["fan_id"], :name => "index_likes_on_fan_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
