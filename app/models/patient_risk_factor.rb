class PatientRiskFactor < ActiveRecord::Base
  belongs_to :patient
  has_and_belongs_to_many :ethnicities
  attr_accessible :color_sun_exposure_effect, :ethnicity_ids, :eye_color, :first_degree_relative, :freckle_count, :gender, :hair_color, :immunosuppressed, :long_sun_exposure_effect, :melanoma_diagnosis_history, :mrn, :regular_dermatologist, :sensitivity_sun_exposure_effect, :skin_color, :sun_burn_episodes, :tan_sun_exposure_effect, :tanning_saloon_frequency, :tropical_residence, :tropical_residence_period, :year_of_birth, :number_of_melanocytic_navi, :last_tan

  validates :color_sun_exposure_effect, :eye_color, :first_degree_relative, :freckle_count, :gender, :hair_color, :long_sun_exposure_effect, :sensitivity_sun_exposure_effect, :skin_color, :sun_burn_episodes, :tan_sun_exposure_effect, :tanning_saloon_frequency, :year_of_birth, :presence => true

  validates :melanoma_diagnosis_history, :regular_dermatologist, :tropical_residence, :immunosuppressed, :inclusion => { :in => [true, false] }
end
