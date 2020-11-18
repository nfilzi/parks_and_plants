class GardensController < ApplicationController
  def show
    @plant  = Plant.new
    @garden = Garden.find(params[:id])
  end
end
