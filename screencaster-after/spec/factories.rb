FactoryGirl.define do
  factory :episode do
    name         'Hello world'
    description  'Lorem ipsum'
    published_on Time.zone.now.to_date
  end
end
