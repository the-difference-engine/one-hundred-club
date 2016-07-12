FactoryGirl.define do
  factory :donation do 
    title "Mr."
    first_name "John"
    middle_name "Alton"
    last_name "Doe"
    suffix "II"    
    address "1 Example Street"
    city "Chicago"
    state "IL"
    country "United States"
    zip_code 60290
    phone "5555555555"
    sequence(:email) { |n| "johndoe#{n}@example.com" }
    amount 25
  end
end