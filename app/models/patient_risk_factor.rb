class PatientRiskFactor < ActiveRecord::Base
  has_and_belongs_to_many :ethnicities
  attr_accessible :color_sun_exposure_effect, :ethnicity_ids, :eye_color, :first_degree_relative, :freckle_count, :gender, :hair_color, :immunosuppressed, :long_sun_exposure_effect, :melanoma_diagnosis_history, :mrn, :regular_dermatologist, :sensitivity_sun_exposure_effect, :skin_color, :sun_burn_episodes, :tan_sun_exposure_effect, :tanning_saloon_frequency, :tropical_residence, :tropical_residence_age_range, :tropical_residence_period, :year_of_birth

  validates :color_sun_exposure_effect, :eye_color, :first_degree_relative, :freckle_count, :gender, :hair_color, :long_sun_exposure_effect, :mrn, :sensitivity_sun_exposure_effect, :skin_color, :sun_burn_episodes, :tan_sun_exposure_effect, :tanning_saloon_frequency, :year_of_birth, :presence => true

  validates :mrn, :uniqueness => true
  validates :melanoma_diagnosis_history, :regular_dermatologist, :tropical_residence, :immunosuppressed, :inclusion => { :in => [true, false] }
end
