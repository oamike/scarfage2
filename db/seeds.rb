# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DEV_USERS = [
  {username: 'oamike', email: 'mikewhitmarsh@gmail.com', role: :admin},
  {username: 'adam', email: 'adamtirella@gmail.com', role: :moderator},
  {username: 'aaron', email: 'aaronhigh@gmail.com', role: :user}

]
DEV_USERS.each do |user|
  User.where(username: user[:username]).first_or_create!(user)
end
# clear all when new attriubutes are annotate_rendered_view_with_filenames
Item.all.destroy_all
if Item.count == 0
  path = File.join(File.dirname(__FILE__), "./seeds/AllScarves.json")
  records = JSON.parse(File.read(path))
  records.each do |record|
    Item.where(id: record["uid"]).first_or_create!(
      id: record["uid"],
      name: record["name"],
      body: record["body"],
      description: record["desc"].to_s,
      created_at: record["added"],
      updated_at: record["modified"]
    )
  end
  puts "items are seeded"
end
# ITEMS = [
#   {name: 'Scarf1', body: 'first scarf', description: 'first scarft in db'},
#   {name: 'Scarf2', body: 'second scarf', description: 'second scarft in db'},
#   {name: 'Scarf3', body: 'third scarf', description: 'third scarft in db'},
#   {name: 'Scarf4', body: 'fourth scarf', description: 'fourth scarft in db'},
#   {name: 'Scarf5', body: 'fifth scarf', description: 'fifth scarft in db'}
# ]
# ITEMS.each do |item|
#   Item.where(name: item[:name]).first_or_create!(item)
# end
