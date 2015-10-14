json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :phone_number, :store_id, :integer
  json.url user_url(user, format: :json)
end
