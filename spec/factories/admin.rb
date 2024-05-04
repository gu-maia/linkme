FactoryBot.define do
  factory :admin, class: 'User' do
    email { 'admin@linkme.com' }
    password { '123456' }
  end
end
