class PlantsController < ApplicationController
    wrap_parameters format: []
    def index
        render json:Plant.all
    end
    def show
        render json:Plant.find(params[:id])
    end
    def create
        plant=Plant.create(plant_params)
        plant
        render json:plant,status: :created
    end
    def plant_params
        params.permit(:name, :image, :price)
      end
end
