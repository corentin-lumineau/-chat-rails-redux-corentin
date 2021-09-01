#Destroy all instances

puts 'Deleting messages...'
Message.delete_all 

puts 'Deleting users...'
User.delete_all

puts 'Deleting channels...'
Channel.delete_all

#Create channels

puts 'Creating new Channels...'

channel1 = {
  name: 'cocoChannel'
}

channel2 = {
  name: 'amiensChannel'
}

channel3 = {
  name: 'pontoiseChannel'
}

[channel1, channel2, channel3].each do |attributes|
  current_channel = Channel.create(attributes)
  p "#{current_channel} created"
end

#Create User

puts 'Creating new Users...'

user1 = {
  email: 'coco@gmail.com',
  password: 123456
}

user2 = {
  email: 'loulou@gmail.com',
  password: 123456
}

user3 = {
  email: 'pauline@gmail.com',
  password: 123456
}

[user1, user2, user3].each do |attributes|
  current_user = User.create(attributes)
  p "#{current_user} created"
end

#Create Messages

puts 'Creating new Messages...'

message1 = {
  content: 'Coucou les gars',
  user_id: User.last.id,
  channel_id: Channel.last.id
}

message2 = {
  content: 'Coucou ça va ?',
  user_id: User.first.id,
  channel_id: Channel.last.id
}

message3 = {
  content: 'Ouais tranquille et toi ?',
  user_id: User.last.id,
  channel_id: Channel.last.id
}

message4 = {
  content: 'Je préfère ce channel !',
  user_id: User.first.id,
  channel_id: Channel.first.id
}

message5 = {
  content: 'Ha ok parlons ici alors !',
  user_id: User.last.id,
  channel_id: Channel.first.id
}

[message1, message2, message3, message4, message5].each do |attributes|
  p current_message = Message.create!(attributes)
  p "#{current_message} created"
end







