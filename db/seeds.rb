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
  first_name: "Sébastien",
  last_name: "Saunier"
)

#  stamps


stamp1 = Stamp.new(
  title: "Travel",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp1.save!

stamp2 = Stamp.new(
  title: "Love",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp2.save!

stamp3 = Stamp.new(
  title: "Friends",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp3.save!

stamp4 = Stamp.new(
  title: "Food",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp4.save!

stamp5 = Stamp.new(
  title: "Restaurant",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp5.save!

stamp6 = Stamp.new(
  title: "Party",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp6.save!

stamp7 = Stamp.new(
  title: "Birthday",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp7.save!

stamp8 = Stamp.new(
  title: "Highschool",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp8.save!

stamp9 = Stamp.new(
  title: "College",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp9.save!

stamp10 = Stamp.new(
  title: "Soccer",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp10.save!

stamp11 = Stamp.new(
  title: "Family",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp11.save!

stamp12 = Stamp.new(
  title: "Birth",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp12.save!


stamp13 = Stamp.new(
  title: "2004",
  stamp_image: "stamp#{rand(2..7)}",
  user_id: user.id
  )
stamp13.save!

# Memories

# Birth of my sister

memory1 = Memory.new(
  title: "My sister is born",
  description: "My beautiful sister is a lucky girl, because she will be on the receiving end of all your kindness and wisdom",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541689961/birth.jpg",
  suggested: false,
  stamps: [stamp2, stamp12, stamp11, stamp13]
  )
memory1.save!

memory2 = Memory.new(
  title: "She looks just like Aunt Clara!",
  description: "Grandma immediatly said that when she saw my new little sister. I knew I had to save this moment, to see if it turned out to be true in the coming years.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp2, stamp12, stamp11, stamp13]
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


memory3 = Memory.new(
  title: "Les rêves sont la nourriture des dieux.",
  description: "Caroline a dit ça lors de notre goûter. C'était très drôle parce que ça nous a fait penser à notre dîner la semaine dernière.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp3]
  )
memory3.save!

memory9 = Memory.new(
  title: "Bahamas",
  description: "Magnifique plage vierge",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407645/Bahamas.jpg",
  suggested: false,
  stamps: [stamp1, stamp2]
  )
memory9.save!

memory10 = Memory.new(
  title: "Moto cross",
  description: "Finale de la compétition",
  memory_type: "photo",
  user_id: user.id ,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407602/Motocross_MX_green_1.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3]
  )
memory10.save!

memory11 = Memory.new(
  title: "La fesse gauche s\’adresse à la fesse droite et lui dit : Hey, tu trouves pas que ça pue dans le couloir ?",
  description: "Excellente blague de Guillaume lors d’une partition à 4 fesses",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp3]
  )
memory11.save!

memory5 = Memory.new(
  title: 'Olé le foot',
  description: 'Une affiche de football memorable qui restera dans les mémoires de tous!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407869/foot-style%CC%81.jpg',
  stamps: [stamp1, stamp2]
  )
memory5.save!


memory6 = Memory.new(
  title: 'J\'aime bien manger épicé, mais pas les deux en même temps',
  description: 'Meilleure blague MDRRRR',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp5]
  )
memory6.save!

memory8 = Memory.new(
  title: 'Solumun',
  description: 'Trop louuuurd! Novaljaaaaaa',
  memory_type: 'video',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/video/upload/v1541408735/IMG_2581.mp4',
  stamps: [stamp3, stamp2, stamp5]
  )
memory8.save!

memory13 = Memory.new(
  title: 'Sunset in Novalja',
  description: 'Devant l\'appart, cette vue de dingue!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541408865/IMG_2512.jpg',
  stamps: [stamp2, stamp5]
  )
memory13.save!


puts 'Finished!'
