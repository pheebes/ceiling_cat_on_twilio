# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
stores_list = [
  ["Amart", "0987654321", "11111"],
  ["Bmart", "9990002222", "22222"],
  ["Cmart", "1123123123", "23423"],
  ["Dmart", "2532223333", "65433"]
]

seed_stores = stores_list.each do |name, phone, zip|
  Store.create(store_name: name, store_phone: phone, store_zip: zip )
end
users_list = [
  ["Beth", "Oneal", "1234567890", 1],
  ["Sam", "Wise", "1234567800", 1],
  ["Frodo", "Not", "1234567000", 3],
  ["Mix", "In", "1234560000", 2],
  ["Happy", "Name", "1234560000", 4]
]

users_list.each do |first_name, last_name, phone_number, store_id|
  User.create(first_name: first_name, last_name: last_name, phone_number: phone_number, store_id: store_id)
end
