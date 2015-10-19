# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users_list = [
  ["Beth", "Oneal", "1234567890", "12345"],
  ["Sam", "Wise", "1234567800", "02345"],
  ["Frodo", "Not", "1234567000", "00345"],
  ["Mix", "In", "1234560000", "00045"],
  ["Happy", "Name", "1234560000", "00005"]
]

users_list.each do |first_name, last_name, phone_number, store_id|
  User.create(first_name: first_name, last_name: last_name, phone_number: phone_number, store_id: store_id)
end
