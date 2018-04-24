User.destroy_all

u1 = User.create :name => 'Austin', :email => 'jack@jack.com', :player => true, :sherpa => false, :location => 'Bondi', :available => 'Friday', :password => 'topsecret', :password_confirmation => 'topsecret'
u2 = User.create :name => 'Ivor', :email => 'jack3@jack.com', :player => false, :sherpa => true, :location => 'Manly', :available => 'Sunday', :password => 'topsecret', :password_confirmation => 'topsecret'
u3 = User.create :name => 'STeven', :email => 'test@test.com', :player => false, :sherpa => true, :location => 'Manly', :available => 'Monday', :password => 'topsecret', :password_confirmation => 'topsecret'
u4 = User.create :name => 'Ben', :email => 'testy@jack.com', :player => false, :sherpa => true, :location => 'Manly', :available => 'Tuesday', :password => 'topsecret', :password_confirmation => 'topsecret'

# u1.save!
# u2.save!

Game.destroy_all
g1 = Game.create :name => 'Monopoly', :min_players => '3', :max_players => '6', :age => '12', :playing_time => '45', :category => 'annoying', :description => 'Really fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/915NTWZUtjL._SL1500_.jpg', :bggid => '50'
g2 = Game.create :name => 'Battleship', :min_players => '5', :max_players => '7', :age => '12', :playing_time => '60', :category => 'strategy', :description => 'Most fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/911fxkKxfDL._SL1500_.jpg', :bggid => '51'

# Sherpa.destroy_all
# s1 = Sherpa.create :name => 'James', :email => 'James@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'bondi'
# s2 = Sherpa.create :name => 'Bonny', :email => 'Bonny@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'manly'

Event.destroy_all
e1 = Event.create :date => Date.parse("09-01-2018"), :time => Time.parse("17:00"), :location => 'Manly', :user => u1, :game => g1
e2 = Event.create :date => Date.parse("10-02-2018"), :time => Time.parse("16:00"), :location => 'Manly', :user => u1, :game => g1
e3 = Event.create :date => Date.parse("11-02-2018"), :time => Time.parse("15:00"), :location => 'Bondi', :user => u2, :game => g2

# Add sherpa-game relationship 

u2.games << g1
u2.games << g2
u4.games << g1 << g2

# not needed
# u1.events << e1 << e2
# # u1.events
# u2.events << e3

# s1.events << e1 << e3
# s2.events << e2
#
# g1.events << e1
# g2.events << e2 << e3
#
# s1.games << g1
# s2.games << g2
