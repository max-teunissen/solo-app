class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    if  @plant.save
      redirect_to plant_path(@plant) ,:notice=>"success"
    else
      render "new"
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(params[:plant])
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :price, :size, 
                                  :category, :in_stock, :description, :care)
  end
end