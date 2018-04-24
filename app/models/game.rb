# == Schema Information
#
# Table name: games
#
#  id           :integer          not null, primary key
#  name         :string
#  min_players  :integer
#  max_players  :integer
#  age          :integer
#  playing_time :integer
#  category     :string
#  description  :string
#  image        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Game < ApplicationRecord
  has_many :events
  has_and_belongs_to_many :users
  end
