class PagesController < ApplicationController

    def team
        
        
    end
    

    def contact

    end

    def welcome
        @name = params[:first_name]
        @gossips = Gossip.all

    end

    def gossip

    end

    def show
        
        @gossips = Gossip.all
        @id_gossips = Gossip.find(params['id'])
        
    end


    def user
      
        @users = User.all
        @id_users = User.find(params['id'])
        

    end

end