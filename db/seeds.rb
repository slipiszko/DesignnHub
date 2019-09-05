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

puts "Generating 13 Designs..."

designs = []

designs << Design.create!(
  photo: open('app/assets/images/design_test_2.jpg'),
  title: "Crisp (Customer Messaging App) Saas website",
  description: "I had the pleasure to help the guys are Crisp bring their brand to a place worthy of their culture and ambitions.",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_4.jpg'),
  title: "Windmill town",
  description: "Is there such a place, the blue sky, the gloden earth, the wind blwoing the grass, everything is so beautiful.",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_3.jpg'),
  title: "Fashion Web UI",
  description: "Fashion webite design.",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_7.jpg'),
  title: "Put the Yee in Haw",
  description: "Monday morning type warm-up inspired by the weekend. Have more weekends that keep you sayin' YEE-FUCKING-HAW!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_5.jpg'),
  title: "Sunset hike",
  description: "Personal work / revamp / repost",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_1.jpg'),
  title: "Food web page mockup",
  description: "Made this is in my freetime between jobs",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_6.jpg'),
  title: "Room to Roam Pennant",
  description: "We love how our Room to Roam Pennant came out! Manufactured",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_8.jpg'),
  title: "Passion fruit",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_11.jpg'),
  title: "Cafe Tropical",
  description: "Just for fun exploration for this damn funny show.",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_9.jpg'),
  title: "VR Tennis Game App",
  description: "Connect your app to VR glasses, to play with those legendary tennis starts. Select the courts you prefer and choose the different levels",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_10.jpg'),
  title: "Polar Bear Holding Coca Cola and Flowers",
  description: "Just for fun",
  category: "Illistration",
  user: users.sample
)

puts "Finished!"

puts "Generating Design Tags..."

tags = [
  "Adobe",
  "Branc",
  "Photoshop",
  "Cartoon",
  "Illistration",
  "Logo",
  "Illustrator",
  "Animation",
  "Calligraphy",
  "Web",
  "Web Design",
  "UX",
  "UI",
  "After Effects"
]

tags.each do |tag|
  DesignTag.create!(
    name: tag
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
    x: '0.231',
    y: '0.1738',
    design: design,
    user: users.sample
    )
  }
end

puts "Finished!"


