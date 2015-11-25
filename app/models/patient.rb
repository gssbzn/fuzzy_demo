# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  age        :integer          not null
#  sex        :string(1)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ActiveRecord::Base
  has_many :consultations
end
