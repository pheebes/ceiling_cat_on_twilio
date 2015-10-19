json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :store_phone, :store_zip
  json.url store_url(store, format: :json)
end
