json.extract! company, :id, :name, :founded, :team_size, :website, :location, :about, :created_at, :updated_at
json.url company_url(company, format: :json)
