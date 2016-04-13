FactoryGirl.define do
  factory :project do
    name { Faker::Name.name }
    start_month { rand 1..12 }
    start_year { rand 2000..2199 }
  end
end
