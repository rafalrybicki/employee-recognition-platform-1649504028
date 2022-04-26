FactoryBot.define do
  factory :employee do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.sentences(number: 5) }
    giver { factory :employee }
    receiver { factory :employee }
  end
end
