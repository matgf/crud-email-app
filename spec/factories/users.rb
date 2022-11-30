FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Artist.name }
    last_name { Faker::Artist.name }
    password_digest { '123456' }
  end
end
