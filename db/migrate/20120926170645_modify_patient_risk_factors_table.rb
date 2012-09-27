class ModifyPatientRiskFactorsTable < ActiveRecord::Migration
  def up
	remove_column :patient_risk_factors, :mrn
	remove_column :patient_risk_factors, :tropical_residence_age_range
	add_column :patient_risk_factors, :patient_id, :int
	add_column :patient_risk_factors, :number_of_melanocytic_navi, :int
	add_column :patient_risk_factors, :last_tan, :int
  end

  def down
	remove_column :patient_risk_factors, :last_tan	
	remove_column :patient_risk_factors, :number_of_melanocytic_navi
	remove_column :patient_risk_factors, :patient_id
	add_column :patient_risk_factors, :tropical_residence_age_range, :string
	add_column :patient_risk_factors, :mrn, :string
  end
end
