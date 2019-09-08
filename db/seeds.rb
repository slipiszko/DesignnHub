require 'faker'

puts "Destroying Database..."

JobPost.destroy_all
DesignTag.destroy_all
Comment.destroy_all
User.destroy_all
Design.destroy_all

puts "Generating 3 Users..."

count = 100

users = []

3.times { users <<
  user = User.create!(
    first_name: "Simon",
    last_name: "Tyne",
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
    design: designs.sample,
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
    x: rand(0.1..1),
    y: rand(0.1..1),
    design: design,
    user: users.sample
    )
  }
end

puts "Finished!"

puts "Generating Job Posts..."

JobPost.create!(
  title: "Photographic Retoucher",
  content: "We are looking for a suitably experienced freelance photographic retoucher to join our team. \nWhat the role entails:. \nA strong understanding of all aspects of post-production and workflow. \nExcellent time management skills, with the ability to effectively prioritise simultaneous demands and adapt and respond appropriately. \nExcellent verbal and written communication skills. Customer service and client management skills and the ability to manage ongoing relationships. \nConcern for quality and pride in all work produced, with a sharp eye for detail to ensure accuracy and consistent delivery. \nAbility to work on own initiative, always thinking ahead.  Demonstrating a hands-on and highly organised approach to all tasks. \nAbility to multi-task seamlessly and manage responsibilities and timelines. \nEnthusiastic and positive attitude with a proactive approach to all tasks. \nAbility to problem solve and make decisions independently, escalating when required. \nWebsite and Instagram updates on a regular basis, adding in and managing our latest projects. \nHigh level of understanding of Photoshop, Dropbox, Wacom tablet, data back up and Mac OS. \nRemoving blemishes and imperfections using cloning, healing and patching. \nIntermediate skin retouching. \nAn understanding of Photoshop’s tool settings and how they relate to different tasks. Layer and channel masking. \nUsing adjustment layers to add colour grades and tones. \nAdapting to our workflow using Adobe Bridge and Photoshop basic compositing. \nExperience with Capture One is highly regarded.",
  profession: "Photographer",
  job_type: "Full time",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Digital Content Creator",
  content: "Hi there, I run a busy studio in Northcote creating brands primarily for other creatives such as wedding photographers. I'm looking for a midweight graphic designer to work on some type and layout projects for at least a month with the possibility of extension. \nAre you: \n1. Able to start work in 2 weeks in Northcote? \n2. An absolute wiz in Illustrator and Indesign? \n3. Well versed in type and layout design? \n4. Able to work in a team environment? \n5. Confident about creating design in the attached mood board style?",
  profession: "Graphic Designer",
  job_type: "Full time",
  location: "Sydney",
  user: users.sample
)

JobPost.create!(
  title: "Graphic Designer",
  content: "This position is part of a small team that provides design support to the Australian and International business.  The role reports directly to the Art Director and plays a critical role in the design function and in the day to day output of the marketing team. The role has great breadth across all graphic design aspects of the business and is responsible for designing and producing brand, marketing, sales and corporate communication materials across print, online and multimedia channels.",
  profession: "Graphic Designer",
  job_type: "Part time",
  location: "Victoria",
  photo: open('app/assets/images/job_post_test_1.jpg'),
  user: users.sample
)

JobPost.create!(
  title: "Visual Designer / Art Director",
  content: "We're looking to expand our design team and ramping up the coming year to be one of the best. We are on the lookout designers who are tech-keen, self-motivated and ready to shake things up. In general, you love using web-apps, are always on the lookout for the latest and greatest in UX/UI trends and love to get your hands down and dirty. Our products are in need of some love… and we need your help to do it!",
  profession: "Digital Designer",
  job_type: "Full time",
  location: "Remote",
  user: users.sample
)

JobPost.create!(
  title: "Design Teacher",
  content: "Ever thought about teaching design? We're on the look-out for a gun designer to teach at Shillington two nights a week in Sydney. Inspiring work, and a great gig to earn some extra $$$ on the side, doing what you love! \nNo teaching experience required—just a passion for design and mentorship.",
  profession: "Designer",
  job_type: "Part time",
  location: "Sydney",
  photo: open('app/assets/images/job_post_test_4.jpeg'),
  user: users.sample
)

JobPost.create!(
  title: "Graphic Designer",
  content: "This position is part of a small team that provides design support to the Australian and International business.  The role reports directly to the Art Director and plays a critical role in the design function and in the day to day output of the marketing team. The role has great breadth across all graphic design aspects of the business and is responsible for designing and producing brand, marketing, sales and corporate communication materials across print, online and multimedia channels.",
  profession: "Graphic Designer",
  job_type: "Part time",
  location: "Victoria",
  user: users.sample
)

JobPost.create!(
  title: "Minimalist Designer",
  content: "My husband is also looking for a designer that is a pro at beautiful minimal design...think Cereal Magazine.",
  profession: "Designer",
  job_type: "Part time",
  location: "Victoria",
  photo: open('app/assets/images/job_post_test_2.jpeg'),
  user: users.sample
)

JobPost.create!(
  title: "Freelance Producer",
  content: "JOB",
  profession: "Producer",
  job_type: "Freelance",
  location: "Remote",
  photo: open('app/assets/images/job_post_test_3.jpeg'),
  user: users.sample
)

JobPost.create!(
  title: "Visual / UX Designer",
  content: "Hello fellow designers! \nWe are seeking an experienced Visual / UX Designer to join our team on a contract basis (potential for full time) and deliver on a range of visual design and communication needs - including digital and physical media.",
  profession: "UX/UI Designer",
  job_type: "Part time",
  location: "Remote",
  user: users.sample
)

JobPost.create!(
  title: "Marketing Student",
  content: "Looking for a marketing student to join our team as a freelancer. \nWork includes everything from: \n• social content creation \n• email marketing \n• helping with automation development \n• and developing marketing campaigns \n \nNo experience neccessary, just a desire to learn on the go, and a knack for telling stories.",
  profession: "Digital Producer",
  job_type: "Freelance",
  location: "Sydney",
  user: users.sample
)

JobPost.create!(
  title: "Volunteer Photographer",
  content: "My community startup People of Purpose is looking for a photographer for our upcoming event 'Connect Four'. The event is two hours and we're hoping to recruit someone on a voluntary basis because we're a not-for-profit and are volunteers ourselves. \nThe event is on Wed 18th Sept from 6-8pm at WeWork on 222 Exhibition Street, CBD.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  photo: open('app/assets/images/job_post_test_5.jpeg'),
  user: users.sample
)

puts "Finished!"


