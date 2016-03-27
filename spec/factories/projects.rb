FactoryGirl.define do
  factory :project do
    name { Faker::Name.name }
    start_date '12/12/2012'
    end_date '12/24/2012'
  end
end
