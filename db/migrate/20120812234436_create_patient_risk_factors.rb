class CreatePatientRiskFactors < ActiveRecord::Migration
  def change
    create_table :patient_risk_factors do |t|
      t.string :mrn
      t.string :gender
      t.integer :year_of_birth
      t.integer :eye_color
      t.integer :hair_color
      t.integer :skin_color
      t.integer :freckle_count
      t.integer :long_sun_exposure_effect
      t.integer :color_sun_exposure_effect
      t.integer :tan_sun_exposure_effect
      t.integer :sensitivity_sun_exposure_effect
      t.integer :first_degree_relative
      t.boolean :melanoma_diagnosis_history
      t.boolean :tropical_residence
      t.integer :tropical_residence_period
      t.integer :tropical_residence_age_range
      t.integer :sun_burn_episodes
      t.integer :tanning_saloon_frequency
      t.boolean :regular_dermatologist
      t.boolean :immunosuppressed

      t.timestamps
    end

    add_index :patient_risk_factors, :mrn, :unique => true
  end
end
