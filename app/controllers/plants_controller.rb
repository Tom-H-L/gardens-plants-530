class PlantsController < ApplicationController
  # "plant"=>{"name"=>"", "image_url"=>""}, "garden_id"=>"1"
  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden) # ROUTE
    else
      render "gardens/show" # NOT A ROUTE, IT'S A FILEPATH FROM /views
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
