# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "job_type.rb"))'

# Crear registros en la tabla job_types con nombres únicos

5.times do
    unique_name = Faker::Job.employment_type
  
    # Verificar si el nombre ya existe en la base de datos
    while JobType.exists?(name: unique_name)
      unique_name = Faker::Job.employment_type
    end
  
    # Crear un nuevo registro con el nombre único
    JobType.create!(
      name: unique_name
    )
  end
  
  puts "Registros de job_types creados."
  
  