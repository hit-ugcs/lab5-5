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

ActiveRecord::Schema.define(:version => 20141104120121) do

  create_table "discussions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labs", :force => true do |t|
    t.integer  "student_id"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "student_id"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_id"
    t.string   "name"
    t.string   "nickname"
    t.integer  "project"
    t.integer  "final"
    t.integer  "lab"
    t.integer  "classdiscussion"
    t.integer  "total"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "classdiscussion1"
    t.integer  "classdiscussion2"
    t.integer  "classdiscussion3"
    t.integer  "classdiscussion4"
    t.integer  "classdiscussion5"
    t.integer  "classdiscussion6"
    t.integer  "classdiscussion7"
    t.integer  "classdiscussion8"
    t.integer  "classdiscussion9"
    t.integer  "classdiscussion10"
    t.integer  "classdiscussion11"
    t.integer  "lab1"
    t.integer  "lab2"
    t.integer  "lab3"
    t.integer  "lab4"
    t.integer  "lab5"
    t.integer  "lab6"
    t.integer  "lab7"
    t.integer  "project1"
    t.integer  "project2"
    t.integer  "project3"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
