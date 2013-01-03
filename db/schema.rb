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

ActiveRecord::Schema.define(:version => 20120926170645) do

  create_table "ethnicities", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ethnicities_patient_risk_factors", :id => false, :force => true do |t|
    t.integer "patient_risk_factor_id"
    t.integer "ethnicity_id"
  end

  create_table "patient_risk_factors", :force => true do |t|
    t.string   "gender"
    t.integer  "year_of_birth"
    t.integer  "eye_color"
    t.integer  "hair_color"
    t.integer  "skin_color"
    t.integer  "freckle_count"
    t.integer  "long_sun_exposure_effect"
    t.integer  "color_sun_exposure_effect"
    t.integer  "tan_sun_exposure_effect"
    t.integer  "sensitivity_sun_exposure_effect"
    t.integer  "first_degree_relative"
    t.boolean  "melanoma_diagnosis_history"
    t.boolean  "tropical_residence"
    t.integer  "tropical_residence_period"
    t.integer  "sun_burn_episodes"
    t.integer  "tanning_saloon_frequency"
    t.boolean  "regular_dermatologist"
    t.boolean  "immunosuppressed"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "patient_id"
    t.integer  "number_of_melanocytic_navi"
    t.integer  "last_tan"
  end

  create_table "patients", :primary_key => "patient_id", :force => true do |t|
    t.string   "mrn"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
