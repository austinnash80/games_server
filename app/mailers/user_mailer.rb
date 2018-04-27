class UserMailer < ApplicationMailer

  default from: "mayor@badgertown.com"

  def welcome(user)
    puts "!!!!" * 15
    puts @user.email
    puts "!!!!" * 15
    @user = user #@user will be whatever user we pass in to the 'welcome' method
    mail( :to => @user.email, :subject => "Welcome to Badgertown!", :cc => "mayor@badgertown.com" )
  end
end
