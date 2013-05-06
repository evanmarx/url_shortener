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

ActiveRecord::Schema.define(:version => 20130506145627) do

  create_table "commentings", :force => true do |t|
    t.integer "long_url_id"
    t.integer "comment_id"
  end

  create_table "comments", :force => true do |t|
    t.integer "user_id"
    t.integer "long_url_id"
    t.string  "body"
  end

  create_table "long_urls", :force => true do |t|
    t.integer "comment_id"
    t.integer "tag_id"
    t.string  "link"
  end

  create_table "short_urls", :force => true do |t|
    t.integer "long_url_id"
    t.integer "user_id"
    t.string  "link"
    t.integer "visit_id"
  end

  create_table "taggings", :force => true do |t|
    t.integer "long_url_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string "username"
    t.string "email"
  end

  create_table "vists", :force => true do |t|
    t.datetime "timestamp"
    t.integer  "user_id"
    t.integer  "short_url_id"
  end

end
