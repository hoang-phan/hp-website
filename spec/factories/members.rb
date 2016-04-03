FactoryGirl.define do
  factory :member do
    name { Faker::Name.name }
    role 'ROR developer'
  end
end
