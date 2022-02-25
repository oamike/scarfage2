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
# Item.all.destroy_all
# Image.all.destroy_all
if true #Item.count == 0
  path = File.join(File.dirname(__FILE__), "./seeds/AllScarves.json")
  records = JSON.parse(File.read(path))
  num = 0
  records.each_with_index do |record, item_index|
    # limit to 10 items
    # break if item_index > 199
    item = Item.where(id: record["uid"]).first_or_create!(
      id: record["uid"],
      name: record["name"],
      body: record["body"],
      created_at: record["added"],
      updated_at: record["modified"]
    )
    record["tags"].each do |tag, i|
      item.tag_list.add(tag) unless ["USA", "Dated" ].include?(tag)
    end
    item.save

    record["images"].each_with_index do |img_id, img_index|
      # puts "Image #{img_id} index #{img_index}"
      name = case img_index
      when 0
        "Front"
      when 1
        "Back"
      else
        "Additonal"
      end
      Image.where(id: img_id).first_or_create!(
        id: img_id,
        user_id: 1, #force oamike at seeds
        name: name,
        item_id: item.id,
        status: :published
      )
    end
    num = item_index + 1
  end
  puts "#{num} items are seeded"
end
