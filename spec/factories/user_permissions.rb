# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_permission do
    super_admin false
    admin false
    content false
  end
end
