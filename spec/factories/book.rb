FactoryBot.define do
    factory :book do
      title { 'A Fake Title' } 
      genre { 'Horror' }
      publish_date { 60.years.ago }
    end
  end