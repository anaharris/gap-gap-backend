# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Conversation.destroy_all
UserConversation.destroy_all
Message.destroy_all

ana = User.create(name: 'Ana', username: 'banana', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/30127074_10212089003521917_2385979076673574288_n.jpg?_nc_cat=100&_nc_ht=scontent-iad3-1.xx&oh=9a1fbc9f17e850fa437ed6986f78391e&oe=5CC05884')
mike = User.create(name: 'Mike', username: 'mikekim', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11261936_10204828684067980_8230718568035380872_n.jpg?_nc_cat=109&_nc_ht=scontent-iad3-1.xx&oh=fd1fab0a89e60e3b322e23b0806894a9&oe=5CCC2D1D')
robin = User.create(name: 'Robin', username: 'rtram', password: '123', avatar: 'https://media.licdn.com/dms/image/C5103AQEwJ__cO1769g/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=sAlU7Pb75TUIvwQmqrVctYrjfRSYW0ylJm1pUfQlm1U')
anna = User.create(name: 'Anna', username: 'connaway', password: '123', avatar: 'https://media.licdn.com/dms/image/C5103AQEwJ__cO1769g/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=sAlU7Pb75TUIvwQmqrVctYrjfRSYW0ylJm1pUfQlm1U')

mom_bot = Bot.create(name: "mom's number", trigger: 'emergency', response: "Mom's phone number is 202-798-0031.", avatar: 'https://static.thenounproject.com/png/1444467-200.png')
elevator_boy = Bot.create(name: 'elevator boy', trigger: 'elevator', response: 'The elevator code is 3751', avatar: 'https://static.thenounproject.com/png/1689493-200.png')

conv1 = Conversation.create(topic: 'chat1')
conv2 = Conversation.create(topic: 'chat2')
conv3 = Conversation.create(topic: 'chat3')

conv1.users << ana
conv1.users << mike
conv2.users << ana
conv2.users << robin
conv3.users << ana
conv3.users << anna
conv1.save
conv2.save
conv3.save
