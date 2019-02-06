class GossipsController < ApplicationController

    def index
      @name = params[:first_name]
      @gossips = Gossip.all
    end
  
    def show
      @gossips = Gossip.all
      @id_gossips = Gossip.find(params['id'])
    end
  
    def new
      @gossip = Gossip.last
    end
  
    def create
      # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
      # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
      
      @gossip = Gossip.new
      @gossip.title = params['gossip_title']
      @gossip.content = params['gossip_content']
      @gossip.user = User.last
  
      if @gossip.save # essaie de sauvegarder en base @gossip
        @i = "1"
        sleep 4
        redirect_to gossips_path
        @i = "0"
      else
         render :template => 'gossips/new'# sinon, il render la view new (qui est celle sur laquelle on est déjà)
  end
    end
  
    def edit
      # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    end
  
    def update
      # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params
      # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    end
  
    def destroy
      # Méthode qui récupère le potin concerné et le détruit en base
      # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
    end
  end