# == Schema Information
#
# Table name: consultations
#
#  id                  :integer          not null, primary key
#  patient_id          :integer          not null
#  height              :float
#  weight              :float
#  temperature         :float
#  total_cholesterol   :float
#  ldl_cholesterol     :float
#  hdl_cholesterol     :float
#  triglycerides       :float
#  blood_glucose_level :float
#  symptoms            :text
#  diagnosis           :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_consultations_on_patient_id  (patient_id)
#

class Consultation < ActiveRecord::Base
  belongs_to :patient
end
