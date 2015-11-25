class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.belongs_to :patient, index: true, foreign_key: true, null: false
      t.float :height
      t.float :weight
      t.float :temperature
      t.float :total_cholesterol
      t.float :ldl_cholesterol
      t.float :hdl_cholesterol
      t.float :triglycerides
      t.float :blood_glucose_level
      t.text  :symptoms
      t.text  :diagnosis

      t.timestamps null: false
    end
  end
end
