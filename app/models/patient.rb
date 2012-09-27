class Patient < ActiveRecord::Base
  has_one :patient_risk_factor
  attr_accessible :mrn
end
