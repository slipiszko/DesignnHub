require 'faker'

puts "Destroying Database..."

DesignTag.destroy_all
Comment.destroy_all
User.destroy_all
Design.destroy_all

puts "Generating 3 Users..."

count = 1

users = []

3.times { users <<
  user = User.create!(
    first_name: "First",
    last_name: "Last Name",
    email: "user#{count}@user.com",
    password: "123456",
    job: "Photography Freelancer",
    bio: "Design lover",
    city: "Berlin",
    photo: open('app/assets/images/avatar-default.png')
    )
  count += 1
}

puts "Finished!"

puts "Generating Designs..."

designs = []

13.times { designs <<
  design = Design.create!(
  photo: open('app/assets/images/design.jpeg'),
  title: "Design title",
  description: "Design description",
  category: "photography",
  user: users.sample
  )
}

puts "Finished!"

puts "Generating Design Tags..."

14.times do
  DesignTag.create!(
    design: designs.sample,
    name: Faker::App.name
  )
end

puts "Finished!"

puts "Generating Comments..."

content = [
    "This is my comment",
    "I left my comment here",
    "A comment was posted here",
    "My favourite comment is above"
  ]

designs.uniq.each do |design|
  5.times { comment = Comment.create!(
    content: content.sample,
    design: design,
    user: users.sample
    )
  }
end

puts "Finished!"


