json.extract! user, :id, :first_name, :last_name, :role, :salary, :team_id, :date_hired, :created_at, :updated_at
json.url user_url(user, format: :json)