# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  date       :date
#  time       :time
#  location   :string
#  user_id    :integer
#  sherpa_id  :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
  belongs_to :user
  belongs_to :game
end
