# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "jobs.rb"))'

# Crea 20 trabajos
20.times do
    Job.create!(
      jobTitle: Faker::Job.title,
      applicationDeadline: Faker::Date.forward(days: 30), # Fecha de solicitud aleatoria dentro de los próximos 30 días
      salaryRange: Faker::Commerce.price(range: 50000..200000, as_string: true), # Rango salarial aleatorio
      description: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 4),
      user_id: 1,
      company_id: Faker::Number.between(from: 1, to: 6), # ID de la empresa aleatorio entre 1 y 6
      job_type_id: Faker::Number.between(from: 1, to: 5) # ID del tipo de trabajo aleatorio entre 1 y 5
    )
  end
  
  puts "20 jobs created."
  
  