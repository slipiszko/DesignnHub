require 'faker'
User.destroy_all
Design.destroy_all

puts "Creating 3 Users..."
count = 1
3.times do |n|
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthday: Faker::Date.birthday,
    email: "user#{count}@user.com",
    password: "123456",
    job: Faker::Job.title,
    bio: "Design lover",
    city: Faker::Address.city,
    photo: open('app/assets/images/profile-picture.jpg')
    )
  user.save!
  count += 1
end

puts 'finish!'

users = User.all
puts "Creating 2 Designs..."

2.times do |f|
  design = Design.new(
    photo: open('app/assets/images/profile-picture.jpg'),
    title: "look at me beautiful design",
    description: "Designs made with love",
    category: "photography",
    user: users.sample
    )
  design.save!
end
puts "finish!"




