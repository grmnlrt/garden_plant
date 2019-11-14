class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    tags = Tag.where(id: params['plant_tag']['tag_id'])
    tags.each do |tag|
      PlantTag.create(tag: tag, plant: @plant)
    end
    redirect_to garden_path(@plant.garden)
    # tag = Tag.find(params['plant_tag']['tag_id'])
    # @plant_tag = PlantTag.new(tag: tag, plant: @plant)
    # if @plant_tag.save
    #   redirect_to garden_path(@plant.garden)
    # else
    #   render 'new'
    # end
  end
end
