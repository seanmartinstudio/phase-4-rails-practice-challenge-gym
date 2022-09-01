class ClientsController < ApplicationController
    
    def index 
        clients = Client.all
        render json: clients
    end

    def show 
        client = Client.find_by(id: params[:id])
        if client
            render json: client, status: :ok
        else 
            render json: { errors: "Client not found" }, status: :not_found
        end
    end

end
