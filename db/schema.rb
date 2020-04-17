# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_12_203958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "black_cards", force: :cascade do |t|
    t.string "text"
    t.integer "pick_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.integer "points"
    t.integer "w_card_1"
    t.integer "w_card_2"
    t.integer "w_card_3"
    t.integer "w_card_4"
    t.integer "w_card_5"
    t.integer "w_card_6"
    t.integer "w_card_7"
    t.integer "w_card_8"
    t.integer "w_card_9"
    t.integer "w_card_10"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "round_id"
    t.integer "number_of_players"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_games_on_name", unique: true
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "round_number"
    t.integer "game_id"
    t.integer "dealer_id"
    t.integer "b_card"
    t.integer "pick_amount"
    t.integer "player_1"
    t.integer "player_2"
    t.integer "player_3"
    t.integer "player_4"
    t.integer "player_5"
    t.integer "player_6"
    t.integer "player_7"
    t.integer "player_8"
    t.integer "player_9"
    t.integer "player_10"
    t.integer "player_1_card_1"
    t.integer "player_1_card_2"
    t.integer "player_1_card_3"
    t.integer "player_2_card_1"
    t.integer "player_2_card_2"
    t.integer "player_2_card_3"
    t.integer "player_3_card_1"
    t.integer "player_3_card_2"
    t.integer "player_3_card_3"
    t.integer "player_4_card_1"
    t.integer "player_4_card_2"
    t.integer "player_4_card_3"
    t.integer "player_5_card_1"
    t.integer "player_5_card_2"
    t.integer "player_5_card_3"
    t.integer "player_6_card_1"
    t.integer "player_6_card_2"
    t.integer "player_6_card_3"
    t.integer "player_7_card_1"
    t.integer "player_7_card_2"
    t.integer "player_7_card_3"
    t.integer "player_8_card_1"
    t.integer "player_8_card_2"
    t.integer "player_8_card_3"
    t.integer "player_9_card_1"
    t.integer "player_9_card_2"
    t.integer "player_9_card_3"
    t.integer "player_10_card_1"
    t.integer "player_10_card_2"
    t.integer "player_10_card_3"
    t.integer "player_count"
    t.integer "win_card_1"
    t.integer "win_card_2"
    t.integer "win_card_3"
    t.integer "win_player"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "white_cards", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
