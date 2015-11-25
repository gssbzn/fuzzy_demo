class Reports::DiabetesRiskController < ApplicationController
  def index
    @results = Consultation.includes(:patient)
                           .fuzzy_where(blood_glucose_level: :pre_diabetes,
                                        weight: :overweight)
                           .page(params[:page])
  end
end
