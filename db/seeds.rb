users = User.create([
    { email: "Bender@metal.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", admin: true, description: Faker::Lorem.paragraphs(3).join(" "),first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::Number.number(10)},
    { email: "Bob@gmail.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", description: Faker::Lorem.paragraphs(3).join(" "),first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::Number.number(10) },
    { email: "Tom@gmail.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", description: Faker::Lorem.paragraphs(3).join(" "),first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::Number.number(10) },
    { email: "Lisa@gmail.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", description: Faker::Lorem.paragraphs(3).join(" "),first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::Number.number(10) },
    { email: "Jill@gmail.com", password: "asdfghjkl", password_confirmation: "asdfghjkl", description: Faker::Lorem.paragraphs(3).join(" "),first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, street_address: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::Number.number(10) }
])

20.times do
  FactoryGirl.create(:skill, name: Faker::Hacker.adjective + " " + Faker::Hacker.noun, description: Faker::Lorem.paragraphs(3).join(" "), user_id: rand(1..5))
end

30.times do
  FactoryGirl.create(:project, name: Faker::Hacker.adjective + " " + Faker::Hacker.noun, description: Faker::Lorem.paragraphs(3).join(" "), user_id: rand(1..5), github_url: Faker::Internet.url, live_url: Faker::Internet.url, skill_id: rand(1..20))
end

20.times do
  FactoryGirl.create(:reference, name: Faker::Name.name, user_id: rand(1..5))
end

40.times do
  FactoryGirl.create(:comment, body: Faker::Lorem.paragraphs(3).join(" "), user_id: rand(1..5), post_id: rand(1..20))
end

20.times do
  FactoryGirl.create(:post, name: Faker::Hacker.adjective + " " + Faker::Hacker.noun,body: Faker::Lorem.paragraphs(3).join(" "), user_id: rand(1..5))
end
