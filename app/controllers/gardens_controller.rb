class GardensController < ApplicationController
  before_action :set_garden, only: [:show]

  # GET /gardens/1
  def show
    # @garden
    @plant = Plant.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_garden
    @garden = Garden.find(params[:id])
  end
end
