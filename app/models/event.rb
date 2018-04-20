class Event < ApplicationRecord
  belongs_to :sherpa
  belongs_to :user
  belongs_to :game
end
