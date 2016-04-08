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

ActiveRecord::Schema.define(version: 20160329222812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dientes", force: :cascade do |t|
    t.string   "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "email"
    t.string   "ip"
    t.string   "status"
    t.decimal  "fee",        precision: 6, scale: 2
    t.string   "paypal_id"
    t.decimal  "total",      precision: 6, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "pedido_id"
    t.integer  "user_id"
  end

  add_index "payments", ["pedido_id"], name: "index_payments_on_pedido_id", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "observacion"
    t.integer  "trabajo_id"
    t.integer  "material_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.string   "file"
  end

  add_index "pedidos", ["material_id"], name: "index_pedidos_on_material_id", using: :btree
  add_index "pedidos", ["trabajo_id"], name: "index_pedidos_on_trabajo_id", using: :btree
  add_index "pedidos", ["user_id"], name: "index_pedidos_on_user_id", using: :btree

  create_table "pedidos_dientes", force: :cascade do |t|
    t.integer  "pedido_id"
    t.integer  "diente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pedidos_dientes", ["diente_id"], name: "index_pedidos_dientes_on_diente_id", using: :btree
  add_index "pedidos_dientes", ["pedido_id"], name: "index_pedidos_dientes_on_pedido_id", using: :btree

  create_table "trabajos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabajos_materials", force: :cascade do |t|
    t.integer "trabajo_id"
    t.integer "material_id"
  end

  add_index "trabajos_materials", ["material_id"], name: "index_trabajos_materials_on_material_id", using: :btree
  add_index "trabajos_materials", ["trabajo_id"], name: "index_trabajos_materials_on_trabajo_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "nombre"
    t.string   "rut"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "facturacion"
    t.string   "institucion"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "roles_mask"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean  "admin"
    t.boolean  "owner"
    t.boolean  "supervisor"
    t.boolean  "userconvenio"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "payments", "pedidos"
  add_foreign_key "payments", "users"
  add_foreign_key "pedidos", "materials"
  add_foreign_key "pedidos", "trabajos"
  add_foreign_key "pedidos", "users"
  add_foreign_key "pedidos_dientes", "dientes"
  add_foreign_key "pedidos_dientes", "pedidos"
  add_foreign_key "trabajos_materials", "materials"
  add_foreign_key "trabajos_materials", "trabajos"
end
