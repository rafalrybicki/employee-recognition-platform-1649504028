FactoryBot.define do
  factory :employee do
    sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }
    password { 'password' }
  end
end
