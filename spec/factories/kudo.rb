FactoryBot.define do
  factory :kudo do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.sentences(number: 5) }
    giver { factory :employee }
    receiver { factory :employee }
  end
end
