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

ActiveRecord::Schema.define(version: 20170716171454) do

  create_table "course_collections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description",            limit: 65535
    t.integer  "site_id"
    t.boolean  "is_open"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "is_published"
    t.text     "very_short_description", limit: 65535
    t.index ["site_id"], name: "index_course_collections_on_site_id", using: :btree
  end

  create_table "course_course_collections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_id"
    t.integer  "course_collection_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["course_collection_id"], name: "index_course_course_collections_on_course_collection_id", using: :btree
    t.index ["course_id"], name: "index_course_course_collections_on_course_id", using: :btree
  end

  create_table "course_ideas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.text     "what",           limit: 65535
    t.string   "format_of_idea"
    t.integer  "site_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["site_id"], name: "index_course_ideas_on_site_id", using: :btree
  end

  create_table "course_proposal_question_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_proposal_question_id"
    t.text     "answer",                      limit: 65535
    t.integer  "course_proposal_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["course_proposal_id"], name: "index_cpqa2", using: :btree
    t.index ["course_proposal_question_id"], name: "index_cpqa", using: :btree
  end

  create_table "course_proposal_question_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "option"
    t.integer  "course_proposal_question_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["course_proposal_question_id"], name: "cpqi", using: :btree
  end

  create_table "course_proposal_question_sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_proposal_question_id"
    t.integer  "site_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["course_proposal_question_id"], name: "index_cpqs", using: :btree
    t.index ["site_id"], name: "index_course_proposal_question_sites_on_site_id", using: :btree
  end

  create_table "course_proposal_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "question",   limit: 65535
    t.text     "help_text",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "site_id"
    t.index ["site_id"], name: "index_course_proposal_questions_on_site_id", using: :btree
  end

  create_table "course_proposal_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "proposal_status"
    t.integer  "course_proposal_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["course_proposal_id"], name: "index_course_proposal_statuses_on_course_proposal_id", using: :btree
    t.index ["user_id"], name: "index_course_proposal_statuses_on_user_id", using: :btree
  end

  create_table "course_proposals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "site_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title"
    t.text     "description", limit: 65535
    t.text     "background",  limit: 65535
    t.text     "scheduling",  limit: 65535
    t.integer  "user_id"
    t.index ["site_id"], name: "index_course_proposals_on_site_id", using: :btree
    t.index ["user_id"], name: "index_course_proposals_on_user_id", using: :btree
  end

  create_table "course_registrations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_registrations_on_course_id", using: :btree
    t.index ["user_id"], name: "index_course_registrations_on_user_id", using: :btree
  end

  create_table "course_sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "approved"
    t.index ["course_id"], name: "index_course_sessions_on_course_id", using: :btree
  end

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "very_short_description", limit: 65535
    t.text     "full_description",       limit: 65535
    t.integer  "location_id"
    t.integer  "instructor_id"
    t.integer  "homesite_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.boolean  "published"
    t.integer  "limit",                                default: 0, null: false
    t.index ["homesite_id"], name: "index_courses_on_homesite_id", using: :btree
    t.index ["instructor_id"], name: "index_courses_on_instructor_id", using: :btree
    t.index ["location_id"], name: "index_courses_on_location_id", using: :btree
  end

  create_table "crosslistings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "course_id"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_crosslistings_on_course_id", using: :btree
    t.index ["site_id"], name: "index_crosslistings_on_site_id", using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.text     "address",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "menu_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "menu_id"
    t.integer  "page_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_pages_on_menu_id", using: :btree
    t.index ["page_id"], name: "index_menu_pages_on_page_id", using: :btree
  end

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_menus_on_site_id", using: :btree
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.text     "body",       limit: 65535
    t.integer  "site_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["site_id"], name: "index_pages_on_site_id", using: :btree
  end

  create_table "role_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_users_on_role_id", using: :btree
    t.index ["user_id"], name: "index_role_users_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "domain"
    t.integer  "homepage_id"
    t.text     "footer",           limit: 65535
    t.text     "proposal_preface", limit: 65535
    t.text     "idea_preface",     limit: 65535
    t.index ["homepage_id"], name: "index_sites_on_homepage_id", using: :btree
  end

  create_table "uploaded_files", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "the_file_file_name"
    t.string   "the_file_content_type"
    t.integer  "the_file_file_size"
    t.datetime "the_file_updated_at"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.string   "invited_by_type"
    t.integer  "invited_by_id"
    t.integer  "invitations_count",      default: 0
    t.integer  "site_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
    t.index ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["site_id"], name: "index_users_on_site_id", using: :btree
  end

  add_foreign_key "course_collections", "sites"
  add_foreign_key "course_ideas", "sites"
  add_foreign_key "course_proposal_question_answers", "course_proposal_questions"
  add_foreign_key "course_proposal_question_answers", "course_proposals"
  add_foreign_key "course_proposal_statuses", "course_proposals"
  add_foreign_key "course_proposal_statuses", "users"
  add_foreign_key "course_proposals", "users"
  add_foreign_key "course_registrations", "courses"
  add_foreign_key "course_registrations", "users"
  add_foreign_key "crosslistings", "courses"
  add_foreign_key "crosslistings", "sites"
  add_foreign_key "menu_pages", "menus"
  add_foreign_key "menu_pages", "pages"
  add_foreign_key "menus", "sites"
  add_foreign_key "pages", "sites"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
  add_foreign_key "users", "sites"
end
