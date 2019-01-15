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

ana = User.create(name: 'ana', username: 'banana', password: '123', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png')
mike = User.create(name: 'mike', username: 'mikekim', password: '123', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png')
robin = User.create(name: 'robin', username: 'rtram', password: '123', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png')
anna = User.create(name: 'anna', username: 'connaway', password: '123', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png')

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
