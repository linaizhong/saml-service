FactoryGirl.define do
  factory :localized_name do
    value { Faker::Lorem.sentence }
    lang 'en'
  end
end
