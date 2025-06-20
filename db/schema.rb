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

ActiveRecord::Schema[8.0].define(version: 2025_06_13_143652) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string "numero_classe"
    t.string "professeur_id"
    t.string "cours_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cours", force: :cascade do |t|
    t.string "nom_cours"
    t.string "professeur_id"
    t.string "class_room_id"
    t.time "Time"
    t.string "Programm_cours"
    t.string "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.date "date_evaluation"
    t.string "numero_eval"
    t.string "materiel"
    t.string "notes"
    t.string "professeur_id"
    t.string "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscriptions", force: :cascade do |t|
    t.date "date_inscription"
    t.string "student_id"
    t.string "paiement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professeurs", force: :cascade do |t|
    t.string "nom_professeur"
    t.date "date_naissance"
    t.string "numero_telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "nom_student"
    t.date "date_naissance"
    t.string "numero_telephone"
    t.string "email"
    t.string "grade"
    t.string "numero_parents"
    t.string "cours_id"
    t.string "professeur_id"
    t.string "class_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
