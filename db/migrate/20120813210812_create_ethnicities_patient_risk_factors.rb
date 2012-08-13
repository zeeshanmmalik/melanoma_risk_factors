class CreateEthnicitiesPatientRiskFactors < ActiveRecord::Migration
  def change
    create_table :ethnicities_patient_risk_factors do |t|
      t.integer :patient_risk_factor_id
      t.integer :ethnicity_id
    end
  end
end
