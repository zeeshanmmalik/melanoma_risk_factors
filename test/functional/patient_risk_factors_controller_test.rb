require 'test_helper'

class PatientRiskFactorsControllerTest < ActionController::TestCase
  setup do
    @patient_risk_factor = patient_risk_factors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_risk_factors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_risk_factor" do
    assert_difference('PatientRiskFactor.count') do
      post :create, patient_risk_factor: { color_sun_exposure_effect: @patient_risk_factor.color_sun_exposure_effect, eye_color: @patient_risk_factor.eye_color, first_degree_relative: @patient_risk_factor.first_degree_relative, freckle_count: @patient_risk_factor.freckle_count, gender: @patient_risk_factor.gender, hair_color: @patient_risk_factor.hair_color, immunosuppressed: @patient_risk_factor.immunosuppressed, long_sun_exposure_effect: @patient_risk_factor.long_sun_exposure_effect, melanoma_diagnosis_history: @patient_risk_factor.melanoma_diagnosis_history, mrn: @patient_risk_factor.mrn, regular_dermatologist: @patient_risk_factor.regular_dermatologist, sensitivity_sun_exposure_effect: @patient_risk_factor.sensitivity_sun_exposure_effect, skin_color: @patient_risk_factor.skin_color, sun_burn_episodes: @patient_risk_factor.sun_burn_episodes, tan_sun_exposure_effect: @patient_risk_factor.tan_sun_exposure_effect, tanning_saloon_frequency: @patient_risk_factor.tanning_saloon_frequency, tropical_residence: @patient_risk_factor.tropical_residence, tropical_residence_age_range: @patient_risk_factor.tropical_residence_age_range, tropical_residence_period: @patient_risk_factor.tropical_residence_period, year_of_birth: @patient_risk_factor.year_of_birth }
    end

    assert_redirected_to patient_risk_factor_path(assigns(:patient_risk_factor))
  end

  test "should show patient_risk_factor" do
    get :show, id: @patient_risk_factor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_risk_factor
    assert_response :success
  end

  test "should update patient_risk_factor" do
    put :update, id: @patient_risk_factor, patient_risk_factor: { color_sun_exposure_effect: @patient_risk_factor.color_sun_exposure_effect, eye_color: @patient_risk_factor.eye_color, first_degree_relative: @patient_risk_factor.first_degree_relative, freckle_count: @patient_risk_factor.freckle_count, gender: @patient_risk_factor.gender, hair_color: @patient_risk_factor.hair_color, immunosuppressed: @patient_risk_factor.immunosuppressed, long_sun_exposure_effect: @patient_risk_factor.long_sun_exposure_effect, melanoma_diagnosis_history: @patient_risk_factor.melanoma_diagnosis_history, mrn: @patient_risk_factor.mrn, regular_dermatologist: @patient_risk_factor.regular_dermatologist, sensitivity_sun_exposure_effect: @patient_risk_factor.sensitivity_sun_exposure_effect, skin_color: @patient_risk_factor.skin_color, sun_burn_episodes: @patient_risk_factor.sun_burn_episodes, tan_sun_exposure_effect: @patient_risk_factor.tan_sun_exposure_effect, tanning_saloon_frequency: @patient_risk_factor.tanning_saloon_frequency, tropical_residence: @patient_risk_factor.tropical_residence, tropical_residence_age_range: @patient_risk_factor.tropical_residence_age_range, tropical_residence_period: @patient_risk_factor.tropical_residence_period, year_of_birth: @patient_risk_factor.year_of_birth }
    assert_redirected_to patient_risk_factor_path(assigns(:patient_risk_factor))
  end

  test "should destroy patient_risk_factor" do
    assert_difference('PatientRiskFactor.count', -1) do
      delete :destroy, id: @patient_risk_factor
    end

    assert_redirected_to patient_risk_factors_path
  end
end
