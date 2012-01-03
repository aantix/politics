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

ActiveRecord::Schema.define(:version => 20120103101646) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "party_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.boolean  "searchable",  :default => true
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "human_validations", :force => true do |t|
    t.integer  "gold_num1"
    t.integer  "gold_num2"
    t.integer  "gold_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sex_it_up_images", :force => true do |t|
    t.string   "image_search_term"
    t.string   "image_original_url"
    t.string   "image_url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "transcription_segments", :force => true do |t|
    t.integer  "transcription_id"
    t.integer  "candidate_id"
    t.text     "transcription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transcriptions", :force => true do |t|
    t.integer  "video_segment_id"
    t.integer  "category_id"
    t.integer  "gold_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_segments", :force => true do |t|
    t.integer  "video_id",            :null => false
    t.integer  "offset",              :null => false
    t.integer  "duration",            :null => false
    t.integer  "human_validation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url",          :null => false
    t.string   "video_id",     :null => false
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "duration"
    t.integer  "candidate_id"
  end

  add_index "videos", ["url"], :name => "index_videos_on_url", :unique => true
  add_index "videos", ["video_id"], :name => "index_videos_on_video_id", :unique => true

end
