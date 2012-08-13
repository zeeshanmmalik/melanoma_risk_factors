class Ethnicity < ActiveRecord::Base
  has_and_belongs_to_many :patient_risk_factors
  attr_accessible :title
end
