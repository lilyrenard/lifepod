ActiveRecord::Base.connection.tables.each do |table|
  next if table.match(/\Aschema_migrations\Z/)
  ActiveRecord::Base.connection.execute("TRUNCATE #{table} CASCADE")
end

puts 'delete all'

Memory.destroy_all
Stamp.destroy_all
User.destroy_all

puts 'Creating memories...'

# user

user = User.create!(
  email: "test@gmail.com",
  password: "123456",
  birth_date: "26/01/1993",
  first_name: "Ruben",
  last_name: "Gueunoun",
  profile_picture: "photo.jpg"
)

#  stamps


# stamp1 = Stamp.new(
#   title: "Travel",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp1.save!

stamp14 = Stamp.new(
  title: "Love",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp14.save!

# stamp3 = Stamp.new(
#   title: "Friends",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp3.save!

# stamp4 = Stamp.new(
#   title: "Food",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp4.save!

# stamp5 = Stamp.new(
#   title: "Restaurant",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp5.save!

# stamp6 = Stamp.new(
#   title: "Party",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp6.save!

# stamp7 = Stamp.new(
#   title: "Birthday",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp7.save!

# stamp8 = Stamp.new(
#   title: "Highschool",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp8.save!

# stamp9 = Stamp.new(
#   title: "College",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp9.save!

# stamp10 = Stamp.new(
#   title: "Soccer",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp10.save!

stamp11 = Stamp.new(
  title: "Family",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp11.save!

stamp12 = Stamp.new(
  title: "Birth",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp12.save!


stamp13 = Stamp.new(
  title: "2004",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp13.save!

stamp1 = Stamp.new(
  title: "Summer",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp1.save!

stamp2 = Stamp.new(
  title: "2018",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp2.save!

stamp3 = Stamp.new(
  title: "Holidays",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp3.save!

stamp5 = Stamp.new(
  title: "Croatie",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp5.save!

stamp4 = Stamp.new(
  title: "Wedding",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp5.save!


# Memories

# Birth of my sister

memory1 = Memory.new(
  title: "My sister is born",
  description: "My beautiful sister is a lucky girl, because she will be on the receiving end of all your kindness and wisdom.",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541689961/birth.jpg",
  suggested: false,
  stamps: [stamp14, stamp12, stamp11, stamp13]
  )
memory1.save!

memory2 = Memory.new(
  title: "She looks just like Aunt Clara!",
  description: "Grandma immediatly said that when she saw my new little sister. I knew I had to save this moment, to see if it turned out to be true in the coming years.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp14, stamp12, stamp11, stamp13]
  )
memory2.save!


# Grandpa's birthday

memory3 = Memory.new(
  title: "Grandpa's birthday",
  description: "What a birthday! We ",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541697209/grandpa-birth.jpg",
  suggested: false,
  stamps: [stamp2, stamp12, stamp11, stamp13]
  )
memory3.save!




memory1 = Memory.new(
  title: "Tourists in Croatia ;)",
  description: "We went on a trip with the girls at Novalja.",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407621/amis.jpeg.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory1.save!

memory3 = Memory.new(
  title: "Nothing is better than going home to family and eating good food and relaxing.",
  description: "Caroline said that during lunch. It was very funny because it made us thought of last dinner we had together.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp3]
  )
memory3.save!

memory9 = Memory.new(
  title: "Sunrise at Sonus Festival",
  description: "Beautiful beach",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759360/IMG_2538.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory9.save!

memory10 = Memory.new(
  title: "Oupsi the haircut...",
  description: "What a beautiful haircut",
  memory_type: "photo",
  user_id: user.id ,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759354/IMG_2501.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory10.save!


memory5 = Memory.new(
  title: 'Jerk!!',
  description: 'Some kids in Crotia playing with a broken glass',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759346/IMG_2563.jpg',
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory5.save!


memory6 = Memory.new(
  title: 'Q: When do you serve tofu turkey? A: Pranksgiving.',
  description: 'Best joke LOOOOOL',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp5]
  )
memory6.save!

memory8 = Memory.new(
  title: 'Solumun',
  description: 'Huuuuuge! Novaljaaaaaa',
  memory_type: 'video',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/video/upload/v1541408735/IMG_2581.mp4',
  stamps: [stamp1, stamp3, stamp2, stamp5]
  )
memory8.save!

memory13 = Memory.new(
  title: 'Sunset in Novalja',
  description: 'In front of the appartment !',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541408865/IMG_2512.jpg',
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory13.save!


memory14 = Memory.new(
  title: 'Bro\'s wedding',
  description: 'The wedding team. All my friends reunited for my brother\'s wedding',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759681/mariage.jpg',
  stamps: [stamp2, stamp4]
  )
memory13.save!



puts 'Finished!'
