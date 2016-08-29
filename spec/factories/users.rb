require 'faker'

FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

FactoryGirl.define do
  factory :user, :class => 'User' do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email
    role { Faker::Company.profession }
    salary { Faker::Number.number(6) }
    team_id { FactoryGirl.create(:team).id }
    date_hired {Faker::Time.between(DateTime.now - 600, DateTime.now)  }
    password '12345678'
    password_confirmation '12345678'
  end
end
