# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating stamps...'
  memory = Memory.new(
    title: "Torcho fanfare",
    user_id: current_user.id
  )
  stamp = Stamp.new(
    title: "Centrale",
    user_id: current_user.id
  )
  stamp.save!
  memory.stamps << @stamp
  memory.save!

  memory = Memory.new(
    title: "Torcho fanfare",
    user_id: current_user.id
  )
  stamp = Stamp.new(
    title: "2018",
    user_id: current_user.id
  )
  stamp.save!
  memory.stamps << @stamp
  memory.save!

puts 'Finished!'
