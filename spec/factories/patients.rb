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

FactoryGirl.define do
  factory :patient do
    name { Faker::Name.name }
    age { Faker::Number.between(18, 50) }
    sex { ['m', 'f'].sample }
  end
end
