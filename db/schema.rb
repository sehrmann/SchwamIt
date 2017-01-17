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

ActiveRecord::Schema.define(version: 20170117211441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating",                 null: false
    t.text     "body"
    t.integer  "vote_score", default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "item_id"
    t.integer  "user_id"
    t.index ["item_id"], name: "index_reviews_on_item_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "user_votes", force: :cascade do |t|
    t.integer "user_id",               null: false
    t.integer "review_id",             null: false
    t.integer "value",     default: 0
    t.index ["review_id"], name: "index_user_votes_on_review_id", using: :btree
    t.index ["user_id"], name: "index_user_votes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string  "username",                 null: false
    t.string  "email",                    null: false
    t.boolean "admin",    default: false
  end

end
