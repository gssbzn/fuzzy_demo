namespace :consultations do

  desc 'Init data'
  task init_data: :environment do
    require 'fuzzy_demo/data_generator'
    FuzzyDemo::DataGenerator.generate
    puts 'End'
  end
end
