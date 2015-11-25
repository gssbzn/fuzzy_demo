class Reports::HealthController < ApplicationController
  def index
    @results = Consultation.includes(:patient)
    @results = @results.fuzzy_where(search_params) unless search_params.empty?
    @results = @results.page(params[:page])
  end

  private

  def search_params
    params.permit(:blood_glucose_level, :weight,
                  :ldl_cholesterol, :hdl_cholesterol, :triglycerides)
  end
end
