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

ActiveRecord::Schema.define(:version => 20110316132805) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.text     "story"
    t.integer  "truth_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "truth_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "author"
    t.string   "job_title"
    t.text     "job_description"
    t.integer  "weekly_hours"
    t.integer  "annual_compensation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "truths", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "author_name"
    t.integer  "votes"
  end

  create_table "votes", :force => true do |t|
    t.integer  "truth_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
