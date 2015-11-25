FactoryGirl.define do
  factory :consultation do
    patient

    height { Faker::Number.between(150, 200) }
    weight { Faker::Number.between(50.00, 150.00) }
    temperature { Faker::Number.between(36.00, 41.00) }
    ldl_cholesterol { Faker::Number.between(80.00, 300.00) }
    hdl_cholesterol { Faker::Number.between(30.00, 80.00) }
    triglycerides { Faker::Number.between(130.00, 600.00) }
    blood_glucose_level { Faker::Number.between(70.00, 150.00) }
    symptoms { Faker::Lorem.paragraph }
    diagnosis { Faker::Lorem.paragraph }
  end
end
