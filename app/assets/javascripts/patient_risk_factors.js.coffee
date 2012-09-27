# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$(".edit_patient_risk_factor").validationEngine
		promptPosition: "topLeft"
	$(".edit_patient_risk_factor").formToWizard
		showStepNo: false
		showProgress: true
		validateBeforeNext: ->
			return $(".edit_patient_risk_factor").validationEngine("validate")
