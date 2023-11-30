# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "users.rb"))'

require 'open-uri'

puts 'Creating 20 users with photos, please wait, this process may take a while...'


20.times do
  user = User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    role: rand(0..1),
    phone: Faker::PhoneNumber.cell_phone,
    website: Faker::Internet.url,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    agency_id: Agency.all.sample.id,
    position_id: Position.all.sample.id,
    email: Faker::Internet.email,
    password: '123456' # needs to be 6 digits
    # add any additional attributes you have on your model
  )

  # NOTA: debe tener instalado y configurado activestorage para usar esta opción

  file = URI.open('https://thispersondoesnotexist.com/')
  user.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
end

puts '10 users successfully created!'
