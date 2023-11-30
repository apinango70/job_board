# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "companies.rb"))'

# Crea 6 compañías
6.times do
    company = Company.new(
      name: Faker::Company.name,
      founded: Faker::Date.between(from: 50.years.ago, to: Date.today),
      teamSize: Faker::Number.between(from: 1, to: 100).to_s,
      website: Faker::Internet.url,
      location: Faker::Address.city,
      about: Faker::Lorem.paragraph
    )
    company.user_id = 1
  
    if company.save
      puts "Company created with id #{company.id} and user_id 1."
    else
      puts "Failed to create company: #{company.errors.full_messages.join(', ')}"
    end
  end