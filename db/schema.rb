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

ActiveRecord::Schema.define(version: 20160721140402) do

  create_table "calendars", force: :cascade do |t|
    t.integer  "users_id"
    t.string   "alertas"
    t.string   "observaciones"
    t.datetime "fecha_cita"
    t.string   "servicio"
    t.integer  "consultorio_id"
    t.integer  "profesional_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.string   "profesional"
    t.string   "especialidad_profesional"
    t.integer  "rango_profesional"
    t.string   "consultorio"
    t.integer  "rango_consutorio"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "tipo_reporte"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stories", force: :cascade do |t|
    t.integer  "users_id"
    t.string   "motivo_consulta"
    t.string   "enfermedad_actual"
    t.string   "examen_fisico"
    t.string   "diagnostico"
    t.string   "analisis"
    t.string   "plan_mejora"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "tipo_documento"
    t.string   "no_documento"
    t.integer  "edad"
    t.string   "genero"
    t.string   "direccion"
    t.string   "municipio"
    t.string   "telefono"
    t.string   "aseguradora"
    t.string   "tipo_afiliacion"
    t.string   "antecedentes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
