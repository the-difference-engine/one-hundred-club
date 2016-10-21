# 50.times do
#   BlogPost.create(
#     title: Faker::Name.title,
#     content: Faker::Lorem.paragraph,
#     image: Faker::Placeholdit.image("100x100")
#     )
# end

# 50.times do
#   FallenHero.create(rank: ["Officer", "Firefighter", "Investigator"].sample, first_name: Faker::Name.first_name, middle_name: Faker::Name.first_name, last_name: Faker::Name.last_name, department: ["Chicago Police", "Chicago Fire Department", "Cook County Sheriff's Department"].sample, date_deceased: Faker::Date.backward(14), description: Faker::Hipster.paragraphs(1)[0], image_url: Faker::Placeholdit.image("50x50"))
# end

# 20.times do 
#   Event.create(image: Faker::Placeholdit.image("100x100"), title: Faker::Lorem.word, description: Faker::Lorem.paragraph, datetime: Faker::Time.forward(30, :evening), location: Faker::Address.street_address)
# end

# 50.times do
#   Donation.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     amount: rand(1..100)
#     )
# end

puts "IT WORKED"