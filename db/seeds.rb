user1 = User.new(
  username: "mattetress",
  password: "password",
  password_confirmation: "password",
  email:"matt@email.com",
  city: "Chicago, IL",
  bio: "I moved back to the US recently from living abroad. I love dreams, and trying to improve dream recall."
)

user2 = User.new(
  username: "Zachary",
  password: "password",
  password_confirmation: "password",
  email:"zachary@email.com",
  city: "Chicago, IL",
  bio: "My name is Zach, and I like cats!"
)

user3 = User.new(
  username: "Awesome_user123",
  password: "password",
  password_confirmation: "password",
  email:"awesome@email.com",
  city: "Miami, FL",
  bio: "I'm awesome."
)

user4 = User.new(
  username: "Dreamer678",
  password: "password",
  password_confirmation: "password",
  email:"dreamer@email.com",
  city: "New York, NY",
  bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)

dream1 = Dream.new(
  title: "A nightmare about the devil!",
  content: "When I was little, I had a recurring dream that the devil was chasing me.  He was flat like a sheet of paper and black and white.  I had to climb under cars and over fences but he was able to just slide right through since he was so flat.  It's funny thinking back on it now, but at the time I was terrified!"
)

dream2 = Dream.new(
  title: "Dream about a Forest Fire",
  content: "I had a dream last night about a forest fire. I was helping to put it out, but it was impossible."
)

dream3 = Dream.new(
  title: "Bathtub full of snakes",
  content: "I dreamt last night that I was going to take a shower, and when I pulled back the shower curtain the bathtub was full of snakes. I ran down the hall to get away from them, but there were a few in the living room too!  What could this mean?"
)

dream4 = Dream.new(
  title: "Lorem Ipsum",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)

dream5 = Dream.new(
  title: "Another Lorem",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborunew."
)

dream6 = Dream.new(
  title: "Flying over Grand Canyon",
  content: "I dreamt that I was flying over the Grand Canyon. It was such a vivid dream!"
)

flying = Category.create(name: "Flying")
nightmares = Category.create(name: "Nightmares")
snakes = Category.create(name: "Snakes")
recurring = Category.create(name: "Recurring")
childhood = Category.create(name: "Childhood")
funny = Category.create(name: "Funny")

comment1 = Comment.create(content: "That sounds scary!")
comment2 = Comment.create(content: "This sounds like an amazing dream")
comment3 = Comment.create(content: "I had one very similar to this just a few days ago")
comment4 = Comment.create(content: "Ew. I hate snakes!")
comment5 = Comment.create(content: "Flying dreams are the best")
comment6 = Comment.create(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

user1.save
user2.save
user3.save
user4.save
dream1.save
dream2.save
dream3.save
dream4.save
dream5.save
dream6.save

user1.dreams << dream1
user2.dreams << dream2
user3.dreams << dream3
user4.dreams << dream4
user1.dreams << dream5
user3.dreams << dream6

dream1.comments << comment1
user4.comments << comment1

dream2.comments << comment2
user4.comments << comment2

dream2.comments << comment3
user4.comments << comment3

dream3.comments << comment4
user1.comments << comment4

dream6.comments << comment5
user3.comments << comment5

dream3.comments << comment6
user2.comments << comment6

dream1.categories << nightmares
dream1.categories << recurring
dream1.categories << childhood

dream2.categories << nightmares

dream3.categories << snakes
dream3.categories << nightmares

dream4.categories << funny

dream6.categories << flying 
