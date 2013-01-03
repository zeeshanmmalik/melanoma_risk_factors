class Patient < ActiveRecord::Base
  self.primary_key = "patient_id"
  has_one :patient_risk_factor
  attr_accessible :mrn
end
