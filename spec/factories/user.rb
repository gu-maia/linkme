# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Alphanumeric.alphanumeric(number: 10) }
    slug { Faker::Movies::HarryPotter.spell.downcase }
  end
end
