# frozen_string_literal: true

FactoryBot.define do
  factory :link do
    user { user }
    title { Faker::Hobby.activity }
    url { Faker::Internet.url }
    age_restricted { false }
  end
end
