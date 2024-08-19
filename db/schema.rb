# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_19_150928) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duels", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "opponent_id"
    t.index ["opponent_id"], name: "index_duels_on_opponent_id"
    t.index ["user_id"], name: "index_duels_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_inventories_on_item_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "probability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "possibilities", force: :cascade do |t|
    t.text "content"
    t.boolean "correct"
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_possibilities_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.text "explication"
    t.bigint "subcategory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subcategory_id"], name: "index_questions_on_subcategory_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "duel_id", null: false
    t.bigint "subcategory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["duel_id"], name: "index_rounds_on_duel_id"
    t.index ["subcategory_id"], name: "index_rounds_on_subcategory_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.text "content"
    t.string "name"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "training_answers", force: :cascade do |t|
    t.integer "count_try"
    t.boolean "solved"
    t.bigint "training_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_training_answers_on_question_id"
    t.index ["training_id"], name: "index_training_answers_on_training_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.date "unlock_date"
    t.boolean "finished"
    t.bigint "user_id", null: false
    t.bigint "subcategory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subcategory_id"], name: "index_trainings_on_subcategory_id"
    t.index ["user_id"], name: "index_trainings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gold_count", default: 0
    t.integer "experience", default: 0
    t.string "last_name"
    t.string "first_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "duels", "users"
  add_foreign_key "duels", "users", column: "opponent_id"
  add_foreign_key "inventories", "items"
  add_foreign_key "inventories", "users"
  add_foreign_key "possibilities", "questions"
  add_foreign_key "questions", "subcategories"
  add_foreign_key "rounds", "duels"
  add_foreign_key "rounds", "subcategories"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "training_answers", "questions"
  add_foreign_key "training_answers", "trainings"
  add_foreign_key "trainings", "subcategories"
  add_foreign_key "trainings", "users"
end
