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
anna = User.create(name: 'Anna', username: 'conaway', password: '123', avatar: 'https://media.licdn.com/dms/image/C5603AQGF2d0pYtafYA/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=kaoKJQvW61X8vzAo-MGQTe1wcenEL7-jMevR0Mxu9ggi')
caroline = User.create(name: 'Caroline', username: 'caro', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-8/26172123_10214054631136252_5467093252244126819_o.jpg?_nc_cat=102&_nc_ht=scontent-iad3-1.xx&oh=a3737a7430c50e62114e5a01d514b6bf&oe=5CC0C64F')
iman = User.create(name: 'Iman', username: 'imanji', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13718795_10207254496696028_481974331366734942_n.jpg?_nc_cat=107&_nc_ht=scontent-iad3-1.xx&oh=60d8ec34d8f0b4c998660db3abe464ef&oe=5CCC6689')
jenny = User.create(name: 'Jenny', username: 'jenny', password: '123', avatar: 'https://media.licdn.com/dms/image/C4E03AQHFD-9C2jJj0g/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=-XS-mx4UwnsBVQd8_BADXdZoaaCP7jPq8cmrv4oV4z8')
nathan = User.create(name: 'Nathan', username: 'nat', password: '123', avatar: 'https://pbs.twimg.com/profile_images/680603140249509888/ibUmdPuJ.jpg')
marissa = User.create(name: 'Marissa', username: 'sotto', password: '123', avatar: 'https://media.licdn.com/dms/image/C4E03AQHHbUaLlcSQuA/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=9E8NPXpxBSxXX-TGNxHSAp2hRax_sJDTKvLBxCr6mqU')
beth = User.create(name: 'Beth', username: 'wilson', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/47469084_10156515110650660_7041400544497238016_n.jpg?_nc_cat=103&_nc_ht=scontent-iad3-1.xx&oh=2f28b19a04561d225d654503f36d06d2&oe=5CCB95A7')
jason = User.create(name: 'Jason', username: 'json', password: '123', avatar: 'https://media.licdn.com/dms/image/C4D03AQFp0xwpGkRDpw/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=Gx889fGJMUWHIwlKJm7nFePaP3xtYmXffkBwmYzuAa4')
joseph = User.create(name: 'Joseph', username: 'arias', password: '123', avatar: 'https://avatars3.githubusercontent.com/u/20893470?s=400&v=4')
andrew = User.create(name: 'Andrew', username: 'rivera', password: '123', avatar: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/43250477_10215770681392587_2811931555595812864_n.jpg?_nc_cat=106&_nc_ht=scontent-iad3-1.xx&oh=c2fbea12df21bef2c887ba2dbec70402&oe=5CBB7585')
lane = User.create(name: 'Lane', username: 'chris', password: '123', avatar: 'https://media.licdn.com/dms/image/C4E03AQGeJxJQTIPBNg/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=eoRV_kFWzdxHKSS_34Wt1DQCESEbg9yghG6Xg7JqtQE')
hillary = User.create(name: 'Hillary', username: 'hillary', password: '123', avatar: 'https://media.licdn.com/dms/image/C4D03AQE55wh8NAv1zw/profile-displayphoto-shrink_800_800/0?e=1553731200&v=beta&t=VHbieqPxoEvfBXSLkdgtu3019wgCtG5chHEYqWYEC24')



mom_bot = Bot.create(name: "Fixer", trigger: 'emergency', response: "Mom's phone number is 202-798-0031.", avatar: 'https://static.thenounproject.com/png/1444467-200.png')
elevator_boy = Bot.create(name: 'Elevator boy', trigger: 'elevator', response: 'The elevator code is 3751', avatar: 'https://static.thenounproject.com/png/1689493-200.png')
jerry = Bot.create(name: 'Jerry', trigger: 'dad', response: 'Did you hear about the restaurant on the moon? Great food, no atmosphere.', avatar: 'https://static.thenounproject.com/png/1159523-200.png')

conv1 = Conversation.create(topic: 'Graduation day lunch')
conv2 = Conversation.create(topic: 'Netflix shows')
conv3 = Conversation.create(topic: 'Baking')

conv1.users << ana
conv1.users << mike
conv2.users << ana
conv2.users << robin
conv3.users << ana
conv3.users << anna
conv1.save
conv2.save
conv3.save
