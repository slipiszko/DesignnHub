require 'faker'

puts "Destroying Database..."

JobPost.destroy_all
DesignTag.destroy_all
Comment.destroy_all
User.destroy_all
Design.destroy_all

puts "Generating 4 Users..."

users = []

users << User.create!(
    first_name: "Bradley",
    last_name: "Cooper",
    email: "user@user.com",
    password: "123456",
    job: "Freelance Photographer",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt sunt debitis beatae quos, cum fugit eius quam delectus voluptas laudantium veritatis repellat numquam vero. Unde beatae magni sed nemo consequatur?",
    city: "Berlin",
    photo: open('app/assets/images/profilepic_1.jpeg'),
  )

users << User.create!(
    first_name: "Whitney",
    last_name: "Huston",
    email: "user2@user.com",
    password: "123456",
    job: "Graphic Design Student",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum corporis officiis, minima iure! Minima commodi omnis voluptas reiciendis quos ratione placeat facilis neque tempore sint libero possimus, eos rem facere.",
    city: "Dehli",
    photo: open('app/assets/images/profilepic_7.jpeg'),

  )

users << User.create!(
    first_name: "Justin",
    last_name: "Timberlake",
    email: "user3@user.com",
    password: "123456",
    job: "Illustrator",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla facere nostrum ab aperiam temporibus aliquid reprehenderit natus ipsam officia rem nesciunt est nobis, rerum recusandae eius aspernatur molestias pariatur unde.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_2.jpeg'),
  )

users << User.create!(
    first_name: "Barack",
    last_name: "Obama",
    email: "user4@user.com",
    password: "123456",
    job: "Creative Director",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum nostrum quisquam harum natus modi necessitatibus nobis. Temporibus amet similique id tempore, vitae, cum porro possimus, reiciendis sint odio aliquam quasi.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_3.jpeg'),
  )

users << User.create!(
    first_name: "Sarah Jessica",
    last_name: "Parker",
    email: "user5@user.com",
    password: "123456",
    job: "Creative Director",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum nostrum quisquam harum natus modi necessitatibus nobis. Temporibus amet similique id tempore, vitae, cum porro possimus, reiciendis sint odio aliquam quasi.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_4.jpeg'),
  )

users << User.create!(
    first_name: "David",
    last_name: "Beckham",
    email: "user6@user.com",
    password: "123456",
    job: "Creative Director",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum nostrum quisquam harum natus modi necessitatibus nobis. Temporibus amet similique id tempore, vitae, cum porro possimus, reiciendis sint odio aliquam quasi.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_5.jpeg'),
  )

users << User.create!(
    first_name: "George",
    last_name: "Clooney",
    email: "user7@user.com",
    password: "123456",
    job: "Creative Director",
    bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum nostrum quisquam harum natus modi necessitatibus nobis. Temporibus amet similique id tempore, vitae, cum porro possimus, reiciendis sint odio aliquam quasi.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_6.jpeg'),
  )





puts "Finished!"

puts "Generating 25 Designs..."

designs = []

designs << Design.create!(
  photo: open('app/assets/images/design_test_9.jpeg'),
  title: "VR Tennis Game App",
  description: "Connect your app to VR glasses, to play with those legendary tennis starts. Select the courts you prefer and choose the different levels",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_10.jpeg'),
  title: "Polar Bear Holding Coca Cola and Flowers",
  description: "Just for fun",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_13.jpeg'),
  title: "Traveling Into the Web",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quia quibusdam, similique expedita nisi aliquam nemo alias, architecto perferendis maiores reprehenderit nobis repellendus amet error iusto accusamus rem libero, maxime?",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_15.jpeg'),
  title: "Web Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure nam dolores beatae laudantium minus, blanditiis perferendis. Debitis inventore, rem, explicabo, dolore eaque natus consequuntur quis aspernatur dolores nisi, doloremque maxime!",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_27.jpeg'),
  title: "E-learning Card Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis laborum molestiae animi ipsam suscipit quae repudiandae deleniti explicabo neque quasi quam, tempora eveniet, iste veniam fugit maiores. Voluptatibus, quae, facere.",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_24.jpeg'),
  title: "Portfolio Mockup",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam incidunt, quis aliquid accusantium dicta animi. Doloribus qui facere amet sequi itaque ullam dolor dignissimos eligendi accusamus harum. Vero illum, delectus.",
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_14.jpeg'),
  title: "The Modern Thinker",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima nesciunt quod aperiam repudiandae ratione repellendus et porro, laborum eum dignissimos pariatur maiores, in aliquam, vero perferendis excepturi. Quo, perspiciatis placeat?",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_18.jpeg'),
  title: "Portugal the Man",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis commodi, at molestiae eum odio. Sit necessitatibus exercitationem nemo earum modi eligendi explicabo doloribus! Laboriosam eaque unde repellendus, eveniet inventore ipsum!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_19.jpeg'),
  title: "Moody Canyon",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore voluptates aperiam hic delectus eum sint harum quasi tenetur, fugiat magni eligendi provident assumenda accusamus expedita adipisci libero, quos eveniet debitis.",
  category: "Photography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_16.jpeg'),
  title: "Incredibles Themed Typography Collage",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio perferendis in voluptate blanditiis recusandae aperiam facere magni? Mollitia odit accusamus similique natus tempora, ipsum, deleniti aperiam inventore, dolorum nesciunt repellendus?",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_12.jpeg'),
  title: "CampSight",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam cumque libero cum aspernatur iste, modi fugit unde excepturi molestiae, explicabo illo aliquid at, possimus optio perspiciatis provident amet facere officiis!",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_17.jpeg'),
  title: "Thank You Kim & Jun ",
  description: "Thank you for the time, effort & passion you both put into DesignnHub. N' for believing in me enough to vote for my project. Wish you both all the best with wherever life may take you. N' if you ever need help with something I'm always just a http request away <3",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_22.jpeg'),
  title: "Low Impact",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi magni ex iste perspiciatis molestias ducimus veniam doloremque dolorem suscipit odit eligendi, repudiandae voluptas cupiditate, dolorum aperiam, atque adipisci dignissimos commodi?",
  category: "Branding",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_20.jpeg'),
  title: "Ocean Love",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis qui nemo id asperiores exercitationem veniam non sapiente, ducimus voluptate ipsum quibusdam molestiae earum. Quas nam, laboriosam iusto perferendis quam. At.",
  category: "Photography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_21.jpeg'),
  title: "Wed Design Components",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat recusandae mollitia rerum atque fugiat odio, nam, voluptatem fuga vitae ab consequuntur eum! Enim itaque amet ad perferendis dicta magni placeat.",
  category: "Graphic Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_23.jpeg'),
  title: "RUAN Bicycles",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores fugiat ratione natus minima, culpa recusandae facere praesentium sapiente inventore adipisci sunt, doloremque saepe molestias excepturi consequatur sit quas voluptas. Animi.",
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_25.jpeg'),
  title: "Fushimi Inari Shrine",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid ipsum porro nihil dolore qui dolores assumenda perspiciatis perferendis itaque inventore. Nulla quisquam, rem aut tempora reprehenderit distinctio deleniti architecto est?",
  category: "Photography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_28.jpeg'),
  title: "London Design Biennale",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_2.jpeg'),
  title: "Crisp (Customer Messaging App) Saas website",
  description: "I had the pleasure to help the guys are Crisp bring their brand to a place worthy of their culture and ambitions.",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_4.jpeg'),
  title: "Windmill town",
  description: "Is there such a place, the blue sky, the gloden earth, the wind blwoing the grass, everything is so beautiful.",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_3.jpeg'),
  title: "Fashion Web UI",
  description: "Fashion webite design.",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_7.jpeg'),
  title: "Put the Yee in Haw",
  description: "Monday morning type warm-up inspired by the weekend. Have more weekends that keep you sayin' YEE-FUCKING-HAW!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_5.jpeg'),
  title: "Sunset hike",
  description: "Personal work / revamp / repost",
  category: "Illistration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_1.jpeg'),
  title: "Food web page mockup",
  description: "Made this is in my freetime between jobs",
  category: "Web desgin",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_6.jpeg'),
  title: "Room to Roam Pennant",
  description: "We love how our Room to Roam Pennant came out! Manufactured",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_8.jpeg'),
  title: "Passion fruit",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_11.jpeg'),
  title: "Cafe Tropical",
  description: "Just for fun exploration for this damn funny show.",
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
    "I love the colors but the background-color could be a bit brighter.",
    "The fontsize is great but the fontfamily is not perfect for this one. You should try bananasana insted.",
    "Amazing design!! I Love the way you pop up the old grandma style with an cowboy touch.",
    "Have you ever thought about using pastelle colors insted of a computer editing programm? I think you design could use a little natural touch.",
    "In case of originality I would give you 10 out of 10. But what did you do to your Paintbrush? It looks like you could need a new one. The quality of your Painting will be so much better!"
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


