module FuzzyDemo
  class DataGenerator
    def self.generate(limit = 100)
      for i in 0..limit
        FactoryGirl.create(:consultation)
      end
    end
  end
end
