class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token
    def voisinage
        voisin = Voisin.new(
            name: params[:name],
            phone: params[:phone],
            address: params[:address],
            about: params[:about],
            favory: params[:favory]
        )
        if voisin.save
            render status:200, json: {message: 'SUCCESS'}
        else
            render status:200, json: {message: 'FAILED'} 
        end
    end
    def listevoisins
        voisin = Voisin.all
        render status:200, json: voisin
    end
    def listevoisinsfavoris
        voisin = Voisin.where(favory: '1').all
        render status:200, json: voisin
    end
    def detailsvoisins
        voisin = Voisin.find(params[:id]) 
        render status:200, json: voisin
    end
end
