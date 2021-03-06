class HouseKingsController < ApplicationController

    def index
        housekings = HouseKing.all 
        render json: housekings
    end

    def show
        houseking = HouseKing.find(params[:id])
        render json: houseking
    end

    def update
        house = HouseKing.find(params[:id])
        houseUpdated = house.update
        render json: houseUpdated
    end

end
