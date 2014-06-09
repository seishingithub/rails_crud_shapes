class ShapesController < ApplicationController

  def index
    @shape = Shape.new
    @shapes = Shape.all
  end

  def create
    @shape = Shape.create(shapes_params)
    if @shape.save
      redirect_to shapes_path
    else
      render :index
    end
  end



  private
  def shapes_params
    params.require(:shape).permit(:name, :number_of_sides)
  end
end