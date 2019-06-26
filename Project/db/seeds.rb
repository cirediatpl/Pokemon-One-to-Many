# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all
Trainer.destroy_all

Ash = Trainer.create(name: "Ash Ketchum", age: "12", skill_level: "Amateur")


Pikachu = Pokemon.create(name: "Pikachu", power_level: "100", pokemon_type: "Electric", trainer: Ash)

puts "Seeded!"