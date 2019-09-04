require 'faker'
User.destroy_all
Design.destroy_all

puts "Creating 3 Users..."
count = 1
3.times do |n|
  user = User.new(
    first_name: "First",
    last_name: "Last Name",
    email: "user#{count}@user.com",
    password: "123456",
    job: "Photography Freelancer",
    bio: "Design lover",
    city: "Berlin",
    photo: open('app/assets/images/avatar-default.png')
    )
  user.save!
  count += 1
end

puts 'finish!'

users = User.all
puts "Creating 2 Designs..."

13.times do |f|
  design = Design.new(
    photo: open('app/assets/images/design.jpeg'),
    title: "Design title",
    description: "Design description",
    category: "photography",
    user: users.sample
    )
  design.save!
end
puts "finish!"




