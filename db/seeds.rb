require 'faker'
puts" destroying..."
Comment.destroy_all
User.destroy_all
Design.destroy_all

puts "Creating 3 Users..."
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
    photo: open('app/assets/images/profile-picture.jpg')
    )
  count += 1
  }
puts "finish!"

puts "Creating designs"

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

  puts "finish"

  puts "create comments"

  designs.uniq.each do |des|
    comment = Comment.create!(
      content: "this is my comment",
      design: des,
      user: users.sample
      )
  end

  puts "finish"





