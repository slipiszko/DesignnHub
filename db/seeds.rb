require 'faker'

puts "Destroying Database..."

JobPost.destroy_all
DesignTag.destroy_all
Comment.destroy_all
User.destroy_all
Design.destroy_all

puts "Generating Users..."

users = []

users << User.create!(
    first_name: "Jun",
    last_name: "Low",
    email: "user@user.com",
    password: "123456",
    job: "Freelance Photographer",
    bio: "Jun is a landscape photographer based in Kuala Lumpur, Malaysia. Jun's pursuit of landscape images have taken her around the world almost continuously for well over a decade now. The visual drama and artistry of her photographs are born of a keen eye for the many moods of Nature and a life-long passion for the wilderness.",
    city: "Kuala Lumpur",
    photo: open('app/assets/images/profilepic_1.jpg'),
  )

users << User.create!(
    first_name: "Sebastian",
    last_name: "Lipiszko",
    email: "user2@user.com",
    password: "123456",
    job: "Graphic Design Student",
    bio: "Seb largely designed motion picture title sequences, corporate logos and movie posters. He was the winner for Academy Award for his exquisite graphic designing.",
    city: "Melbourne",
    photo: open('app/assets/images/profilepic_2.png'),

  )

users << User.create!(
    first_name: "Gael",
    last_name: "Jerop",
    email: "user3@user.com",
    password: "123456",
    job: "Illustrator",
    bio: "Gael is a Illustrator at Naughty Dog in Los Angeles, California. She graduated with a BS and MS in Graphic Design from West Virginia University with a minor in music. During school, she worked at local design companies and taught undergraduate classes.",
    city: "Los Angeles",
    photo: open('app/assets/images/profilepic_3.png'),
  )

users << User.create!(
    first_name: "Rick",
    last_name: "James",
    email: "user4@user.com",
    password: "123456",
    job: "Game Designer",
    bio: "I'm a video game designer and co-founder of the former game development company Maxis, and then part of Electronic Arts. In April 2017, I left EA to run Stupid Fun Club Camp, an entertainment think tank in which Wright and EA are principal shareholders.",
    city: "New York",
    photo: open('app/assets/images/profilepic_4.jpeg'),
  )

users << User.create!(
    first_name: "Paal",
    last_name: "Riwagon",
    email: "user5@user.com",
    password: "123456",
    job: "Senior Graphic Designer",
    bio: "Paal is an Norwegian graphic designer, mentor and surfer. He is best known for his innovative magazine design, and use of experimental typography.",
    city: "Oslo",
    photo: open('app/assets/images/profilepic_5.jpeg'),
  )

users << User.create!(
    first_name: "Caio",
    last_name: "Beckham",
    email: "user6@user.com",
    password: "123456",
    job: "UI Designer",
    bio: "My name is Caio Beckham, a UI Designer strongly focus on Minimalist design. For me, design is an exercise in solving problems and finding solutions to deliver memorable experiences. For the past several years, I have been designing and developing complex and compelling experiences for various brands. I obtained my Bachelors of Fine Arts while studying Graphic Design in college. My main influences come from graphic novels, pop culture, and a mild touch of constructivism.",
    city: "Rio",
    photo: open('app/assets/images/profilepic_6.jpeg'),
  )

users << User.create!(
    first_name: "Benedict",
    last_name: "Tylor",
    email: "user7@user.com",
    password: "123456",
    job: "Creative Director",
    bio: "Benedict Taylor was born in London, England. He is an actor, designers known for Notes on a Scandal (2006), Star Wars: Episode I - The Phantom Menace (1999) and Beau Geste (1982).",
    city: "London",
    photo: open('app/assets/images/profilepic_7.jpeg'),
  )





puts "Finished!"

puts "Generating Designs..."

designs = []

designs << Design.create!(
  photo: open('app/assets/images/design_test_9.jpeg'),
  title: "VR Tennis Game App",
  description: "Connect your app to VR glasses, to play with those legendary tennis starts. Select the courts you prefer and choose the different levels",
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_10.jpeg'),
  title: "Polar Bear Holding Coca Cola and Flowers",
  description: "Just for fun",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_13.jpeg'),
  title: "Traveling Into the Web",
  description: "Travelling into the web to search for the wilderness of another world. ",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_15.jpeg'),
  title: "Web Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure nam dolores beatae laudantium minus, blanditiis perferendis. Debitis inventore, rem, explicabo, dolore eaque natus consequuntur quis aspernatur dolores nisi, doloremque maxime!",
  category: "Illustration",
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
  description: "Instead of limiting your artwork to just the front panel, consider extending it to expand over the width of the case, and perhaps even across the disc, just as has been done in this example, to create a larger image.",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_18.jpeg'),
  title: "Portugal the Man",
  description: "This sleek album cover was actually designed by the musician himself, Tycho, also known as Scott Hansen. The design is built on a strong colour scheme, showcased in sharp geometric shapes, and each colour has been made to correspond to a track. Creating a strong palette that can be used cohesively with the content can make for a pretty effective design.",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_19.jpeg'),
  title: "Moody Canyon",
  description: "Consider how your audience will interact with your design, and how this interaction can be enhanced upon. Bonus points if this interactive element ties directly into the album title, as this heat-sensitive cover.",
  category: "Photography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_16.jpeg'),
  title: "Incredibles Themed Typography Collage",
  description: "A sure-fire way to grab a consumer’s attention and hold onto it is to toy with optical illusions. Much like a pointillist painting.",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_12.jpeg'),
  title: "CampSight",
  description: " Because of the elaborateness of optical illusions like this one, it’s probably a good idea to balance it out with something simple, as this example has done with a back cover with plenty of white-space.",
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
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_4.jpeg'),
  title: "Windmill town",
  description: "Is there such a place, the blue sky, the gloden earth, the wind blwoing the grass, everything is so beautiful.",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_3.jpeg'),
  title: "Fashion Web UI",
  description: "Fashion webite design.",
  category: "Web Design",
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
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/design_test_1.jpeg'),
  title: "Food web page mockup",
  description: "Made this is in my freetime between jobs",
  category: "Web Design",
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
  title: "Funny Show Case",
  description: "Just for fun exploration for this damn funny show.",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign1.jpg'),
  title: "New paradise for you",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign2.jpg'),
  title: "Generation soul",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign3.jpg'),
  title: "Taking to the new edge",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign4.jpg'),
  title: "Go global",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Paint",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign5.jpg'),
  title: "New inspiration",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Paint",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign6.jpg'),
  title: "Wonderful World",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Animation",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign7.jpg'),
  title: "Tropical Vibes",
  description: "After moving to Taiwan I discovered there were so many various fruits and started to draw some of them. For this project I used my Ipad Pro and my Apple pencil. Yummny!",
  category: "Animation",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign8.jpg'),
  title: "Snow snow snow",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Photography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign9.png'),
  title: "London Beer Brew Design",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Branding",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign10.jpg'),
  title: "Branding design for Hong Kong",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Branding",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign11.jpg'),
  title: "My lovely design for rose berry tea",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Branding",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign12.jpg'),
  title: "Gaming Design for cars",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Game",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign13.jpg'),
  title: "Gaming Design for recent video game",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Game",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign14.jpg'),
  title: "Logo for arts and cultures",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Logo",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign15.jpg'),
  title: "Simple black and white",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Illustration",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign16.jpg'),
  title: "Guru design for my friends",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Logo",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign17.jpg'),
  title: "Font family for my new case studies",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Typography",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign18.jpg'),
  title: "Branding for the Japan airport",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Logo",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign19.jpg'),
  title: "Home page for recent projects",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign20.png'),
  title: "Landing page inspiration",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Web Design",
  user: users.sample
)

designs << Design.create!(
  photo: open('app/assets/images/newdesign10.jpg'),
  title: "Gaming Design for cars",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos optio fugit qui aperiam. Accusamus velit voluptatum reprehenderit. Cum, asperiores, eaque. Minima neque saepe fugit itaque odio animi dignissimos eligendi.",
  category: "Game",
  user: users.sample
)
puts "Finished!"

puts "Generating Design Tags..."

tags = [
  "Adobe",
  "Branding",
  "Photoshop",
  "Cartoon",
  "Logo",
  "Illustrator",
  "Animation",
  "Calligraphy",
  "Web",
  "Merchandise",
  "Web Design",
  "Typography",
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
    "In case of originality I would give you 10 out of 10 😍 But what did you do to your Paintbrush? It looks like you could need a new one. The quality of your Painting will be so much better!",
    "I think the spacing between the two words could be a little bit bigger and the left corner looks a bit squeezed",
    "By changing it into negative you make it look was more exciting",
    "Maybe you could make the birds in the front pop out a little more??"
]

designs.uniq.each do |design|
  7.times { comment = Comment.create!(
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

JobPost.create!(
  title: "Art director",
  content: "Art directors work in a variety of settings such as magazines, newspapers, internet-based publications and advertising or public relations agencies. They communicate with clients while overseeing project budgets and timelines. They manage a team of design professionals, reviewing and approving all creative materials before presenting to clients.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Advertising & promotions manager",
  content: "Professionals in these positions often work in agencies to organize campaigns for clients. They may also be responsible for selling advertising space or time for media firms. They work with sales staff to develop concepts for campaigns, partner with creative teams to produce layouts, negotiate contracts and prepare overall campaign budgets.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "User experience (UX) designer",
  content: "UX designers make websites, mobile applications, software or video games easier to navigate and more intuitive for users to interact with. They study and evaluate how people feel about a particular system and design their product to cater to the needs of the user. They also analyze the specific components of the system such as usefulness, value, credibility and accessibility. For example, a UX designer might work with a retailer to update their product webpages and remove issues like frustrating forms, hard-to-find buttons and visual clutter that can prevent users from making a purchase.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Graphic designer",
  content:"One of the most in-demand design professionals out there is a graphic designer. These professionals create designs for marketing collateral, product illustrations, brand identities and websites using computer software like the Adobe® Creative Suite. They merge technical skill with artistic ability to create a design that communicates with its desired audience. Graphic designers may work independently as freelancers or contractors, in an in-house setting for a company or in an agency setting.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Multimedia artist & animator",
  content: "These professionals create animations and special effects for movies, television, video games and other forms of media—both two-dimensional and three-dimensional. They work with teams of animators and artists to bring ideas to life using computer software or by writing their own computer code. Some work in studios or offices, but many are self-employed and work from home.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Photographer",
  content: "Photographers utilize their creativity and composition skills alongside their technical expertise to capture photographs that tell a story or document an event. The majority of today’s photographers work with digital cameras and editing software to capture subjects in commercial-quality images.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  photo: open('app/assets/images/photographer.jpg'),
  user: users.sample
)

JobPost.create!(
  title: "Internship - Multimedia artist & animator ",
  content: " 6 Months Project driven internship at my community startup People of Purpose is looking for a photographer for our upcoming event 'Connect Four'. The event is two hours and we're hoping to recruit someone on a voluntary basis because we're a not-for-profit and a.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Parttime - Developer",
  content: " Looking for an Parttime Employee that can halp me with my community startup People of Purpose is looking for a photographer for our upcoming event 'Connect Four'. The event is two hours and we're hoping to recruit someone on a voluntary basis because we're a not-for-profit and are volunteers ourselves. \nThe event is on Wed 18th Sept from 6-8pm at WeWork on 222 Exhibition Street, CBD.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  user: users.sample
)

JobPost.create!(
  title: "Sorftware Developer",
  content: "Frodo is the worldwide leading company in my community startup People of Purpose is looking for a photographer for our upcoming event 'Connect Four'. The event is two hours and we're hoping to recruit someone on a voluntary basis because we're a not-for-profit and are volunteers ourselves. \nThe event is on Wed 18th Sept from 6-8pm at WeWork on 222 Exhibition Street, CBD.",
  profession: "Photographer",
  job_type: "Freelance",
  location: "Melbourne",
  photo: open('app/assets/images/sd.jpg'),
  user: users.sample
)

puts "Finished!"


