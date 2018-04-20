User.destroy_all
u1 = User.create :name => 'Austin', :email => 'Austin@email.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :name => 'Ivor', :email => 'Ivor@email.com', :password => 'chicken', :password_confirmation => 'chicken'

Game.destroy_all
g1 = Game.create :name => 'Monopoly', :min_players => '3', :max_players => '6', :age => '12', :playing_time => '45', :category => 'annoying', :description => 'Really fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/915NTWZUtjL._SL1500_.jpg'
g2 = Game.create :name => 'Battleship', :min_players => '5', :max_players => '7', :age => '12', :playing_time => '60', :category => 'strategy', :description => 'Most fun game', :image => 'https://images-na.ssl-images-amazon.com/images/I/911fxkKxfDL._SL1500_.jpg'



Sherpa.destroy_all
s1 = Sherpa.create :name => 'James', :email => 'James@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'bondi'
s2 = Sherpa.create :name => 'Bonny', :email => 'Bonny@email.com', :password => 'chicken', :password_confirmation => 'chicken', :location => 'manly'

Event.destroy_all
e1 = Event.create :date => Date.parse("09-01-2018"), :time => Time.parse("17:00"), :location => '333 George St', :user => u1, :game => g1, :sherpa => s1
e2 = Event.create :date => Date.parse("10-02-2018"), :time => Time.parse("16:00"), :location => '333 Market St', :user => u1, :game => g1, :sherpa => s1
e3 = Event.create :date => Date.parse("11-02-2018"), :time => Time.parse("15:00"), :location => '333 King St', :user => u2, :game => g2, :sherpa => s2



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
