class Guest::MapsController < ApplicationController

  def new
    # @map = Map.new
  end

  def map
  end

  def create
    # @map = Map.new(map_params)
    #   if @map.save
    #     redirect_to root_path
    #   else
    #     render :new
    #   end
  end


  private
  def map_params
    params.require(:map).permit(:map_address)
  end

end
