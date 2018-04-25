class PagesController < ApplicationController
    def home
      @user = current_user
    #   if @user != nil
    #     @user_check = @user.find_by(id: @user)
    #   end
    end
  
    def aboutus
    end
  
    def contact
    end
  
    def display_selection
      
      require 'open-uri'
      # Site currently uses scrape from opensecrets.org for funding data, and is limited to the US House of Reps. This will be expanded once the op9ensecrets.org API is in use.

    end
end
  