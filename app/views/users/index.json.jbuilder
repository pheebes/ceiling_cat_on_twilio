json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :phone_number, :store_id
  json.url store_user_url(@store, user, format: :json)
end
