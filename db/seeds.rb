# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'


#Creation url
3.times do |index|
    board = Board.create(url: 'wwww.lequipe.fr')
end

3.times do |index|
    board = Board.create(url: 'wwww.lemonde.fr')
end

4.times do |index|
    board = Board.create(url: 'wwww.figaro.fr')
end


#Creation commentaire
10.times do |index|
    tag = Tag.create(tag: Faker::LordOfTheRings.character)
    tag.board=Board.first
    tag.save
end
