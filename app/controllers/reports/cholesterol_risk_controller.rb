class Reports::CholesterolRiskController < ApplicationController
  def index
    @results = Consultation.includes(:patient)
                           .fuzzy_where(ldl_cholesterol: :ldl_hight,
                                        hdl_cholesterol: :hdl_risk,
                                        triglycerides: :triglycerides_hight)
                           .page(params[:page])
  end
end
