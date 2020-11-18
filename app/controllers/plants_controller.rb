class PlantsController < ApplicationController
  def create
    # 1. Initialize plant with strong params
    @plant = Plant.new(plant_params)

    # 2. Get back correct garden to link plant with (thanks to params[:garden_id])
    @garden = Garden.find(params[:garden_id])

    # 3. Link une plante à son garden
    @plant.garden = @garden

    # 4. Save
    if @plant.save
      # if ça a fonctionné => redirige vers gardens#show
      redirect_to garden_path(@garden)
    else
      # else               => render :new
      render 'gardens/show'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden)
  end

  private
  def plant_params
    params.require(:plant).permit(:name, :picture_url)
  end
end
