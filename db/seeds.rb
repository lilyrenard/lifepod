puts 'delete all'

Memory.destroy_all
Stamp.destroy_all
User.destroy_all

puts 'Creating memories...'

# user

user = User.create!(
  email: "test@gmail.com",
  password: "123456"
)
memory1 = Memory.new(
  title: "Week-end à La Baule",
  description: "On est parties avec les copines à un week-end à La Baule à l'occasion du week-end du 1er novembre.",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407621/amis.jpeg.jpg",
  suggested: false
  )
memory1.save!

memory2 = Memory.new(
  title: "Goûter avec les copines",
  description: "On a testé un super endroit avec les copines. C'était super!",
  url: "https://www.timeout.fr/paris/actualites/un-bar-a-chocolat-geant-avec-terrasse-de-1-500-m2-ouvre-a-paris-102618?fbclid=IwAR1WFaDf7Sa5J2FgGMB3od_hxKs47fi-AEydDtkSGtR7mYMH7n33BnNdtWg",
  memory_type: "link",
  user_id: user.id,
  suggested: false
  )
memory2.save!

memory3 = Memory.new(
  title: "Les rêves sont la nourriture des dieux.",
  description: "Caroline a dit ça lors de notre goûter. C'était très drôle parce que ça nous a fait penser à notre dîner la semaine dernière.",
  memory_type: "quote",
  user_id: user.id,
  suggested: false
  )
memory3.save!

memory9 = Memory.new(
  title: "Bahamas",
  description: "Magnifique plage vierge",
  memory_type: "photo",
  user_id: user.id,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407645/Bahamas.jpg",
  suggested: false
  )
memory9.save!

memory10 = Memory.new(
  title: "Moto cross",
  description: "Finale de la compétition",
  memory_type: "photo",
  user_id: user.id ,
  remote_photo_url: "https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407602/Motocross_MX_green_1.jpg",
  suggested: false
  )
memory10.save!

memory11 = Memory.new(
  title: "La fesse gauche s\’adresse à la fesse droite et lui dit : Hey, tu trouves pas que ça pue dans le couloir ?",
  description: "Excellente blague de Guillaume lors d’une partition à 4 fesses",
  memory_type: "quote",
  user_id: user.id,
  suggested: false
  )
memory11.save!

memory12 = Memory.new(
  title: "Video Koreus inoubliable ",
  description: "Pigeon vs canon",
  url: "https://www.koreus.com/video/pigeon-vs-canon.html",
  memory_type: "link",
  user_id: user.id,
  suggested: false
  )
memory12.save!

stamp1 = Stamp.new(
  title: "La Baule",
  stamp_image: "/images/stamps/#{rand(1..8)}.svg",
  user_id: user.id
  )
stamp1.save!

stamp2 = Stamp.new(
  title: "2018",
  stamp_image: "/images/stamps/#{rand(1..8)}.svg",
  user_id: user.id
  )
stamp2.save!

stamp3 = Stamp.new(
  title: "Goûter",
  stamp_image: "/images/stamps/#{rand(1..8)}.svg",
  user_id: user.id
  )
stamp3.save!

memory1.stamps << stamp1
memory1.stamps << stamp2

memory2.stamps << stamp1
memory2.stamps << stamp2
memory2.stamps << stamp3

memory3.stamps << stamp1
memory3.stamps << stamp2
memory3.stamps << stamp3


memory9.stamps << stamp1
memory9.stamps << stamp2

memory10.stamps << stamp1
memory10.stamps << stamp2
memory10.stamps << stamp3

memory11.stamps << stamp1
memory11.stamps << stamp2
memory11.stamps << stamp3

memory12.stamps << stamp1
memory12.stamps << stamp2

memory5 = Memory.new(
  title: 'Olé le foot',
  description: 'Une affiche de football memorable qui restera dans les mémoires de tous!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541407869/foot-style%CC%81.jpg',
  )
memory5.save!


memory6 = Memory.new(
  title: 'J\'aime bien manger épicé, mais pas les deux en même temps',
  description: 'Meilleure blague MDRRRR',
  memory_type: 'quote',
  user_id: user.id,
  suggested: false,
  )
memory6.save!

memory7 = Memory.new(
  title: 'Le football du futur',
  description: 'Interview mythique de JHE dans lemonde',
  url: 'https://www.lemonde.fr/ligue-1/article/2018/11/05/jacques-henri-eyraud-dans-les-faits-la-ligue-fermee-est-deja-a-l-uvre-dans-le-football-europeen_5378884_1616940.html',
  memory_type: 'link',
  user_id: user.id,
  suggested: false,
  )
memory7.save!

memory8 = Memory.new(
  title: 'Solumun',
  description: 'Trop louuuurd! Novaljaaaaaa',
  memory_type: 'video',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/video/upload/v1541408735/IMG_2581.mp4',
  )
memory8.save!

memory13 = Memory.new(
  title: 'Sunset in Novalja',
  description: 'Devant l\'appart, cette vue de dingue!',
  memory_type: 'photo',
  user_id: user.id,
  suggested: false,
  remote_photo_url: 'https://res.cloudinary.com/dt38p7qqh/image/upload/v1541408865/IMG_2512.jpg',
  )
memory13.save!

stamp5 = Stamp.new(
  title: "Croatie",
  stamp_image: "/images/stamps/#{rand(1..8)}.svg",
  user_id: user.id
  )
stamp5.save!


memory5.stamps << stamp1
memory5.stamps << stamp2

memory6.stamps << stamp1
memory6.stamps << stamp2
memory6.stamps << stamp5

memory7.stamps << stamp2
memory7.stamps << stamp3
memory7.stamps << stamp5

memory8.stamps << stamp5
memory8.stamps << stamp2
memory8.stamps << stamp3

memory13.stamps << stamp5
memory13.stamps << stamp2

puts 'Finished!'
