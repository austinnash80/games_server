class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  # before_action

  before_action :authenticate_user!

  def reload_route
    Rails.application.reload_routes!
  end


end
