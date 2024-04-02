FactoryBot.define do
    factory :post do
      title { "Test Title" }
      description { "Test Description" }

      after(:build) do |post|
        post.edit = post.title[0, 3]
      end
      
    end
  end