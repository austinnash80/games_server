class UserMailer < ApplicationMailer

  default from: "info@boardgamesherpa.com"

  def welcome(user)

    @user = user #@user will be whatever user we pass in to the 'welcome' method

    mail( :to => @user.email, :subject => "Welcome to Board Games Sherpa!", :cc => "info@boardgamesherpa.com" )
  end
end
