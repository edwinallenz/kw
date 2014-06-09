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

ActiveRecord::Schema.define(version: 20140609204304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "tecnica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articulos", ["tecnica_id"], name: "index_articulos_on_tecnica_id", using: :btree

  create_table "control_calidads", force: true do |t|
    t.date     "fecha"
    t.string   "status"
    t.integer  "no_articulos"
    t.integer  "articulos_buenos"
    t.string   "articulos_defetuosos"
    t.integer  "iteracion"
    t.integer  "participante_id"
    t.integer  "orden_produccion_id"
    t.integer  "articulo_id"
    t.integer  "tecnico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "control_calidads", ["articulo_id"], name: "index_control_calidads_on_articulo_id", using: :btree
  add_index "control_calidads", ["orden_produccion_id"], name: "index_control_calidads_on_orden_produccion_id", using: :btree
  add_index "control_calidads", ["participante_id"], name: "index_control_calidads_on_participante_id", using: :btree
  add_index "control_calidads", ["tecnico_id"], name: "index_control_calidads_on_tecnico_id", using: :btree

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "comunidad"
    t.string   "municipio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liders", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "liders", ["empresa_id"], name: "index_liders_on_empresa_id", using: :btree

  create_table "orden_produccions", force: true do |t|
    t.date     "fecha"
    t.date     "fecha_entrega"
    t.string   "no"
    t.string   "tipo"
    t.string   "estado"
    t.string   "priridad"
    t.integer  "cantidad"
    t.integer  "unidades_pleneadas"
    t.integer  "unidades_real"
    t.integer  "empresa_id"
    t.integer  "articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orden_produccions", ["articulo_id"], name: "index_orden_produccions_on_articulo_id", using: :btree
  add_index "orden_produccions", ["empresa_id"], name: "index_orden_produccions_on_empresa_id", using: :btree

  create_table "participantes", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participantes", ["empresa_id"], name: "index_participantes_on_empresa_id", using: :btree

  create_table "tecnicas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tecnicos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
