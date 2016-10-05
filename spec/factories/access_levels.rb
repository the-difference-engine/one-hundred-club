# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :access_level do
    admin false
    content false
    financial false
  end
end
