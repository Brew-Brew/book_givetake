class WelcomeController < ApplicationController
  def home
  end
  def introduce
    
          respond_to do |format|
          format.html
          format.js  
          end
  end
end
