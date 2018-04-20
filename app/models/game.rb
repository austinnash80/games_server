class Game < ApplicationRecord
  has_many :events
  has_many :sherpas 
end
