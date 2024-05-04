FactoryBot.define do
  factory :link do
    user { user }
    title { Faker::Movies::HarryPotter.location }
    url { Faker::Internet.url }
    age_restricted { false }
  end
end
