
class HomeController < ApplicationController

  def index
    set_tab :home
    render index
  end

  def dashboard
    set_tab: dashboard
    render index
  end

  def account
    set_tab: account
    render index
  end

end
