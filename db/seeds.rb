25.times do
  Contact.create(
    name: Faker::FunnyName.two_word_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    birthday: Faker::Date.birthday,
    bio: Faker::Quote.matz,
    phone: Faker::PhoneNumber,
    email: Faker::Internet.email,
    artwork: Faker::Placeholdit.image(size: "50x50")
)
end
