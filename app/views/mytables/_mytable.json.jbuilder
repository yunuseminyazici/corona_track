json.extract! mytable, :id, :first_name, :last_name, :email, :twitter, :created_at, :updated_at
json.url mytable_url(mytable, format: :json)
