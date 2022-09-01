class GymsController < ApplicationController

    def index 
        gyms = Gym.all 
        render json: gyms
    end

    def show 
        gym = Gym.find_by(id: params[:id])
        if gyms
            render json: gym, status: :ok
        else 
            render json: { errors: "Gym not found" }, status: :not_found
        end
    end

    def destroy 
        gym = Gym.find_by(id: params[:id])
        if gym
            gym.destroy
            head :no_content
        else
            render json: { error: "Gym not found" }, status: :not_found
        end
    end

end
