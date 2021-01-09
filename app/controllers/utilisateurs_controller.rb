class UtilisateursController < ApplicationController

    skip_before_action :verify_authenticity_token


    def new 
        @utilisateur=Utilisateur.new
    end

    def create
        @utilisateur = Utilisateur.new(utilisateur_params)

        if @utilisateur.save
            redirect_to @utilisateur
        else
            render 'new'
        end
    end

    def show 
    end

    private 


    def utilisateur_params
        params.require(:utilisateur).permit(:email, :firstname, :name ,:mdp)

    end



end
