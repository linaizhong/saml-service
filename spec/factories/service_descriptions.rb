FactoryGirl.define do
  factory :service_description, class: 'ServiceDescription',
                                parent: :localized_name do
    association :attribute_consuming_service
  end
end
