class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
<<<<<<< HEAD
  # before_action 
=======
  before_action :authenticate_user!

  def reload_route
    Rails.application.reload_routes!
  end
  
>>>>>>> 47bafba24d29b499d236d5b96b1fad71151c55f5
end
