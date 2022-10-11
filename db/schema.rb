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

ActiveRecord::Schema[7.0].define(version: 2022_10_09_132411) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "configurations", id: :serial, force: :cascade do |t|
    t.integer "launch_library_id"
    t.string "url"
    t.string "name"
    t.string "family"
    t.string "full_name"
    t.string "variant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_configurations_on_id"
  end

  create_table "launch_service_providers", id: :serial, force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_launch_service_providers_on_id"
  end

  create_table "launchers", id: :uuid, default: nil, force: :cascade do |t|
    t.string "url"
    t.integer "launch_library_id"
    t.string "slug"
    t.string "name"
    t.string "net"
    t.string "window_end"
    t.string "window_start"
    t.boolean "inhold"
    t.boolean "tbdtime"
    t.boolean "tbddate"
    t.integer "probability"
    t.string "holdreason"
    t.string "failreason"
    t.string "hashtag"
    t.boolean "webcast_live"
    t.string "image"
    t.string "infographic"
    t.datetime "imported_t", precision: nil
    t.integer "publishing_status", default: 0
    t.boolean "manual_update", default: false
    t.bigint "status_id", null: false
    t.bigint "launch_service_provider_id", null: false
    t.bigint "rocket_id", null: false
    t.bigint "mission_id", null: false
    t.bigint "pad_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_launchers_on_id"
    t.index ["launch_service_provider_id"], name: "index_launchers_on_launch_service_provider_id"
    t.index ["mission_id"], name: "index_launchers_on_mission_id"
    t.index ["pad_id"], name: "index_launchers_on_pad_id"
    t.index ["rocket_id"], name: "index_launchers_on_rocket_id"
    t.index ["status_id"], name: "index_launchers_on_status_id"
  end

  create_table "locations", id: :serial, force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.string "country_code"
    t.string "map_image"
    t.integer "total_launch_count"
    t.integer "total_landing_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_locations_on_id"
  end

  create_table "missions", id: :serial, force: :cascade do |t|
    t.integer "launch_library_id"
    t.string "name"
    t.text "description"
    t.string "launch_designator"
    t.string "type"
    t.bigint "orbit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_missions_on_id"
    t.index ["orbit_id"], name: "index_missions_on_orbit_id"
  end

  create_table "orbits", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_orbits_on_id"
  end

  create_table "pads", id: :serial, force: :cascade do |t|
    t.string "url"
    t.integer "agency_id"
    t.string "name"
    t.string "info_url"
    t.string "wiki_url"
    t.string "map_url"
    t.string "latitude"
    t.string "longitude"
    t.string "map_image"
    t.integer "total_launch_count"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_pads_on_id"
    t.index ["location_id"], name: "index_pads_on_location_id"
  end

  create_table "rockets", id: :serial, force: :cascade do |t|
    t.bigint "configuration_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["configuration_id"], name: "index_rockets_on_configuration_id"
    t.index ["id"], name: "index_rockets_on_id"
  end

  create_table "statuses", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_statuses_on_id"
  end

  add_foreign_key "launchers", "launch_service_providers"
  add_foreign_key "launchers", "missions"
  add_foreign_key "launchers", "pads"
  add_foreign_key "launchers", "rockets"
  add_foreign_key "launchers", "statuses"
  add_foreign_key "missions", "orbits"
  add_foreign_key "pads", "locations"
  add_foreign_key "rockets", "configurations"
end
