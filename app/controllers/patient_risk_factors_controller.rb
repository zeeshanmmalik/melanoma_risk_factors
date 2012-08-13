class PatientRiskFactorsController < ApplicationController
  # GET /patient_risk_factors
  # GET /patient_risk_factors.json
  def index
    @patient_risk_factors = PatientRiskFactor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_risk_factors }
    end
  end

  def home
  end

  def load_or_create
    mrn = params[:patient_risk_factor][:mrn]
    if mrn.blank? || params[:patient_risk_factor][:re_mrn].blank?
      flash.now.alert = "Please fill in MRN's in the form below."
      render :home
    elsif mrn != params[:patient_risk_factor][:re_mrn]
      flash.now.alert = "MRN's do not match. Please re-enter MRN's."
      render :home
    elsif PatientRiskFactor.exists?(:mrn => mrn)
      @patient_risk_factor = PatientRiskFactor.where(:mrn => mrn).first
      render :edit 
   else
      @patient_risk_factor = PatientRiskFactor.new(:mrn => mrn)
      @patient_risk_factor.save(:validate => false)
      render :edit
    end
  end

  # GET /patient_risk_factors/1
  # GET /patient_risk_factors/1.json
  def show
    @patient_risk_factor = PatientRiskFactor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_risk_factor }
    end
  end

  # GET /patient_risk_factors/new
  # GET /patient_risk_factors/new.json
  def new
    @patient_risk_factor = PatientRiskFactor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_risk_factor }
    end
  end

  # GET /patient_risk_factors/1/edit
  def edit
    @patient_risk_factor = PatientRiskFactor.find(params[:id])
  end

  # POST /patient_risk_factors
  # POST /patient_risk_factors.json
  def create
    @patient_risk_factor = PatientRiskFactor.new(params[:patient_risk_factor])

    respond_to do |format|
      if @patient_risk_factor.save
        format.html { redirect_to @patient_risk_factor, :notice => 'Patient risk factor was successfully created.' }
        format.json { render json: @patient_risk_factor, status: :created, location: @patient_risk_factor }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_risk_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_risk_factors/1
  # PUT /patient_risk_factors/1.json
  def update
    params[:patient_risk_factor][:ethnicity_ids] ||= []
    @patient_risk_factor = PatientRiskFactor.find(params[:id])

    respond_to do |format|
      if @patient_risk_factor.update_attributes(params[:patient_risk_factor])
        format.html { redirect_to home_path, :notice => 'Data has been succesfully saved. Thanks for your time!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_risk_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_risk_factors/1
  # DELETE /patient_risk_factors/1.json
  def destroy
    @patient_risk_factor = PatientRiskFactor.find(params[:id])
    @patient_risk_factor.destroy

    respond_to do |format|
      format.html { redirect_to patient_risk_factors_url }
      format.json { head :no_content }
    end
  end
end
