class UsersController < ApplicationController

def show
    @users = User.all
    @id_users = User.find(params['id'])
end

def index 
    @users = User.all
    @name = params[:first_name]
    
end

end