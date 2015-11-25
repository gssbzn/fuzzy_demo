module FuzzyDemo
  class DataGenerator
    def self.generate
      for i in 0..100
        FactoryGirl.create(:consultation)
      end
    end
  end
end
