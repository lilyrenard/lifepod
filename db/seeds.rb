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
  remote_profile_picture_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541758484/Photo_d_identite%CC%81.jpg"
)

#  stamps


# stamp1 = Stamp.new(
#   title: "Travel",
#   stamp_image: "stamp#{rand(2..13)}",
#   user_id: user.id
#   )
# stamp1.save!


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

stamp4 = Stamp.new(
  title: "Wedding",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp4.save!

stamp5 = Stamp.new(
  title: "Croatie",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp5.save!

stamp6 = Stamp.new(
  title: "Christmas",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp6.save!

stamp7 = Stamp.new(
  title: "2017",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp7.save!

stamp8 = Stamp.new(
  title: "Roma",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp8.save!

stamp9 = Stamp.new(
  title: "Hannah",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp9.save!

stamp10 = Stamp.new(
  title: "Remiremont",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp10.save!

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

stamp14 = Stamp.new(
  title: "Love",
  stamp_image: "stamp#{rand(2..13)}",
  user_id: user.id
  )
stamp14.save!

# Memories

# Birth of my sister

memory1 = Memory.new(
  #created_at: Thu, 1 Feb 2018 15:42:50 UTC +00:00,
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
  #created_at: Thu, 8 Feb 2018 15:42:50 UTC +00:00,
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
  #created_at: Thu, 1 Mar 2018 15:42:50 UTC +00:00,
  title: "Grandpa's birthday",
  description: "What a birthday! We ",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541697209/grandpa-birth.jpg",
  suggested: false,
  stamps: [stamp2, stamp12, stamp11, stamp13]
  )
memory3.save!



# Seed ancien

memory4 = Memory.new(
  #created_at: Thu, 8 Mar 2018 15:42:50 UTC +00:00,
  title: "Tourists in Croatia ;)",
  description: "We went on a trip with the girls at Novalja.",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407621/amis.jpeg.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory4.save!

memory5 = Memory.new(
  #created_at: Thu, 5 Apr 2018 15:42:50 UTC +00:00,
  title: "Nothing is better than going home to family and eating good food and relaxing.",
  description: "Caroline said that during lunch. It was very funny because it made us thought of last dinner we had together.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp3]
  )
memory5.save!

memory6 = Memory.new(
  #created_at: Thu, 12 Apr 2018 15:42:50 UTC +00:00,
  title: "Sunrise at Sonus Festival",
  description: "Beautiful beach",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759360/IMG_2538.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory6.save!

memory7 = Memory.new(
  #created_at: Thu, 10 May 2018 15:42:50 UTC +00:00,
  title: "Oupsi the haircut...",
  description: "What a beautiful haircut",
  memory_type: "photo",
  user_id: user.id ,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759354/IMG_2501.jpg",
  suggested: false,
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory7.save!

memory8 = Memory.new(
  #created_at: Thu, 19 Apr 2018 15:42:50 UTC +00:00,
  title: 'Jerk!!',
  description: 'Some kids in Crotia playing with a broken glass',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759346/IMG_2563.jpg',
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory8.save!

memory9 = Memory.new(
  #created_at: Thu, 7 Jun 2018 15:42:50 UTC +00:00,
  title: 'Q: When do you serve tofu turkey? A: Pranksgiving.',
  description: 'Best joke LOOOOOL',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp1, stamp2, stamp5]
  )
memory9.save!

memory10 = Memory.new(
  #created_at: Thu, 6 Sep 2018 15:42:50 UTC +00:00,
  title: 'Solumun',
  description: 'Huuuuuge! Novaljaaaaaa',
  memory_type: 'video',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/video/upload/v1541408735/IMG_2581.mp4',
  stamps: [stamp1, stamp3, stamp2, stamp5]
  )
memory10.save!

memory11 = Memory.new(
  #created_at: Thu, 11 Oct 2018 15:42:50 UTC +00:00,
  title: 'Sunset in Novalja',
  description: 'In front of the appartment !',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541408865/IMG_2512.jpg',
  stamps: [stamp1, stamp2, stamp3, stamp5]
  )
memory11.save!

memory12 = Memory.new(
  #created_at: Thu, 18 Oct 2018 15:42:50 UTC +00:00,
  title: 'Bro\'s wedding',
  description: 'The wedding team. All my friends reunited for my brother\'s wedding',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541759681/mariage.jpg',
  stamps: [stamp2, stamp4]
  )
memory12.save!


# Seed New

memory13 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'Noel devant la cheminée',
  description: 'Alors que le froid faisait rage dans cette nuit du reveillon, rien de tel que de se retrouver devant un bon feu de cheminée histoire de se rememorer les meilleures souvenirs de l\'année',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826908/Devant_la_chemine%CC%81e.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp9, stamp10, stamp11, stamp14]
  )
memory13.save!

memory27 = Memory.new(
  #created_at: Thu, 18 Jan 2018 15:42:50 UTC +00:00,
  user_id: user.id,
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14],
  title: "Parcels",
  description: "Comedown",
  url: "45RWJTRY2JzmrR5rV95BUe",
  memory_type: "spotify",
  suggested: false,
  image_associated: "https://i.scdn.co/image/0c42380af83ac78d293b42768e6cfcd9eefd32e5",
  api_id: "45RWJTRY2JzmrR5rV95BUe"
  )
memory27.save!

memory15 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'Dernière visite à Rome',
  description: 'Avant de repartir et de finir ces vacances de Noel, dernière visite et dernière vue à Rome',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826910/Fontaine_Rome.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14]
  )
memory15.save!

memory22 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'Le Sapin à la romaine',
  description: 'Il faut dire qu\'ils savent feter Noel ces italiens!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826920/Sapin_Rome.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14]
  )
memory22.save!

memory28 = Memory.new(
  #created_at: Thu, 25 Jan 2018 15:42:50 UTC +00:00,
  title: 'Noa a choisi la buche à la vanille',
  description: 'Pour son premier Noel, il semble que Noa ait choisi la buche vanille, celle de Tata!',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory28.save!

memory21 = Memory.new(
  #created_at: Thu, 18 Jan 2018 15:42:50 UTC +00:00,
  title: 'Noel Festival Roma',
  description: 'Incroyable l\'ambiance qu\'il y a dans ce stade olympique de Rome. ROMA ROMA ROMA !',
  memory_type: 'video',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/video/upload/v1541408735/IMG_2581.mp4',
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14]
  )
memory21.save!

memory16 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'Les cadeaux ! Les cadeaux !',
  description: 'Mes perites nièces ne doivent surtout voir cette photo ! Ou du moins elles taperaient dessus en me disant que je me prends pour le père Noel ! Secret defense !!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826911/Sapin_et_moi.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory16.save!

memory19 = Memory.new(
  #created_at: Thu, 11 Jan 2018 15:42:50 UTC +00:00,
  title: 'Voila les buches !',
  description: 'Les traditionnelles buches de Noel ! Pralinée pour Papa, Vanille pour Tata, et Chocolat pour moi !!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826917/buches.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory19.save!

memory26 = Memory.new(
  #created_at: Thu, 18 Jan 2018 15:42:50 UTC +00:00,
  user_id: user.id,
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14],
  title: "Angèle",
  description: "Victime des réseaux",
  url: "6CRn2SOULrzIuqll4nH2lG",
  memory_type: "spotify",
  suggested: false,
  image_associated: "https://i.scdn.co/image/458c677e9ab27951f97257b35cbd19f77bbc846c",
  api_id: "6CRn2SOULrzIuqll4nH2lG"
  )
memory26.save!

memory20 = Memory.new(
  #created_at: Thu, 11 Jan 2018 15:42:50 UTC +00:00,
  title: 'Le fameux Colisée !',
  description: 'Quelle aventure ! La photo pourrrait nous faire croire que la météo été agrébale mais elle ne laisse pas comprendre le déluge qui précédait cette visite ! Mais le jeu en valait la chandelle',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826917/Colisee.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14]
  )
memory20.save!

memory30 = Memory.new(
  #created_at: Thu, 25 Jan 2018 15:42:50 UTC +00:00,
  title: 'Le père Noel existe',
  description: 'Je vous jure!',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory30.save!

memory23 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'Noel à Remiremont',
  description: 'Depart pour notre Noel à Remiremont',
  memory_type: 'instagram',
  url: 46,
  user_id: user.id,
  suggested: false,
  image_associated: 'https://scontent.cdninstagram.com/vp/a826bc4d6068fdbdcecb759346eef9e4/5CAC49BF/t51.2885-15/sh0.08/e35/p640x640/24838666_1186401978160997_6030892793851805696_n.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14],
  api_id: "1674941247486029748_1407473911"
  )
memory23.save!

memory24 = Memory.new(
  #created_at: Thu, 18 Jan 2018 15:42:50 UTC +00:00,
  user_id: user.id,
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14],
  title: "Paolo Nutini",
  description: "Last Request",
  url: "6xM8oBy40nK1rOd8WmoOPx",
  memory_type: "spotify",
  suggested: false,
  image_associated: "https://i.scdn.co/image/360ec9a640894b55784849696cc5e40da3abe072",
  api_id: "6xM8oBy40nK1rOd8WmoOPx"
  )
memory24.save!

memory25 = Memory.new(
  #created_at: Thu, 25 Jan 2018 15:42:50 UTC +00:00,
  user_id: user.id,
  stamps: [stamp3, stamp6, stamp7, stamp8, stamp9, stamp14],
  title: "Tom Misch",
  description: "Lost in Paris",
  url: "4A7DUET5H4f7dJkUhjfVFB",
  memory_type: "spotify",
  suggested: false,
  image_associated: "https://i.scdn.co/image/659f05e9ce15d0b81ea191937c2c3a3aecec160c",
  api_id: "4A7DUET5H4f7dJkUhjfVFB"
  )
memory25.save!


memory14 = Memory.new(
  #created_at: Thu, 11 Jan 2018 15:42:50 UTC +00:00,
  title: 'Sapin 2017',
  description: 'Pariculièrement beau cette année le Sapin, ne reste plus qu\'à ajouter les cadeaux qui vont avec',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826894/Sapin.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory14.save!

memory29 = Memory.new(
  #created_at: Thu, 25 Jan 2018 15:42:50 UTC +00:00,
  title: 'SVP des vacances pour Noel',
  description: 'Ca serait vraiment très gentil de votre part :)',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory29.save!


memory17 = Memory.new(
  #created_at: Thu, 11 Jan 2018 15:42:50 UTC +00:00,
  title: 'La table du reveillon',
  description: 'Toujours aussi douée pour décorer les tables tata ! ;)',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826915/Table_du_reveillon.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory17.save!

memory18 = Memory.new(
  #created_at: Thu, 4 Jan 2018 15:42:50 UTC +00:00,
  title: 'La table de Noel',
  description: 'Ne surtout pas lui dire mais je preferais celle de la veille...',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1542826916/Table_de_Noel.jpg',
  stamps: [stamp3, stamp6, stamp7, stamp10, stamp11]
  )
memory18.save!


puts 'Finished!'
