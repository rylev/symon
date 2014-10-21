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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141021002033) do

  create_table "examples", force: true do |t|
    t.text     "text",        null: false
    t.text     "translation", null: false
    t.integer  "words_id",    null: false
    t.integer  "synonym_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "examples", ["synonym_id"], name: "index_examples_on_synonym_id", using: :btree
  add_index "examples", ["words_id"], name: "index_examples_on_words_id", using: :btree

  create_table "synonym", force: true do |t|
    t.string   "translation", null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.string   "text",       null: false
    t.integer  "synonym_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
