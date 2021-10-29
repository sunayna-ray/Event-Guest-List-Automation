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

ActiveRecord::Schema.define(version: 20210426211246) do

  create_table "events", force: :cascade do |t|
    t.string  "title"
    t.string  "date"
    t.integer "total_seats"
    t.string  "box_office_customers"
    t.integer "total_seats_box_office"
    t.integer "total_seats_guest"
    t.integer "balance"
  end

  create_table "guests", force: :cascade do |t|
    t.string  "email_address"
    t.integer "event_id"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "affiliation"
    t.string  "added_by"
    t.string  "guest_type"
    t.string  "seat_category"
    t.integer "max_seats_num"
    t.string  "booking_status"
    t.integer "total_booked_num"
  end

  add_index "guests", ["event_id"], name: "index_guests_on_event_id"

end