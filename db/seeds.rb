# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Austin', :email => 'Austin@email.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :name => 'Ivor', :email => 'Ivor@email.com', :password => 'chicken', :password_confirmation => 'chicken'

Game.destroy_all
g1 = Game.create :name => 'Monopoly', :min_players => '3', :max_players => '6', :age => '12', :playing_time => '45', :category => 'annoying', :description => 'Really fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/915NTWZUtjL._SL1500_.jpg'
g2 = Game.create :name => 'Battleship', :min_players => '5', :max_players => '7', :age => '12', :playing_time => '60', :category => 'strategy', :description => 'Most fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/911fxkKxfDL._SL1500_.jpg'

Event.destroy_all
e1 = Event.create :date => '20/4/18', :time => '7:00pm', :location => '333 George St',
e2 = Event.create :date => '25/5/18', :time => '6:00pm', :location => '333 Market St',
e3 = Event.create :date => '22/5/18', :time => '5:00pm', :location => '333 King St',

Sherpa.destroy_all
s1 = Sherpa.create :name => 'James', :email => 'James@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'bondi'
s2 = Sherpa.create :name => 'Bonny', :email => 'Bonny@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'manly'

u1.event << e1 << e2
u2.event << e3

s1.event << e1 << e3
s2.event << e2

g1.event << e1
g2.event << e2 << e3

s1.game << g1
s2.game << g2
