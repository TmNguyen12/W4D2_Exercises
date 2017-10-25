# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
cats1 = Cat.create(birth_date: Date.new(2001,01,01), color: 'orange', name: 'Garfield', sex: 'M', description: 'lazy cat')
cats2 = Cat.create(birth_date: Date.new(2002,02,02), color: 'white', name: 'Roy', sex: 'F', description: 'cool cat')
cats3 = Cat.create(birth_date: Date.new(2003,03,03), color: 'black', name: 'Kitty', sex: 'M', description: 'fat cat')
