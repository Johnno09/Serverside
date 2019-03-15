class UserController < ApplicationController
end

    def login
        session[:login] = 1 
        flash [:notice] = "Logged in ."
        redirect_to :controller => :items
    end   
    
    def logout 
        session[:login] = nil 
        flash [notice] = "see u later"
        redirect_to :controller => :items 
    end     
        
        
    
    
