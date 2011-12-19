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

ActiveRecord::Schema.define(:version => 20111219013301) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "party_id"
    t.integer  "order"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "transcriptions", :force => true do |t|
    t.integer  "video_segment_id"
    t.integer  "category_id"
    t.text     "transcription"
    t.integer  "gold_num1"
    t.integer  "gold_num2"
    t.integer  "gold_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_segments", :force => true do |t|
    t.integer  "video_id"
    t.integer  "offset"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "video_id"
    t.text     "description"
    t.string   "url"
    t.datetime "published_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "duration"
  end

end
