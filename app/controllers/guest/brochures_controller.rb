class Guest::BrochuresController < ApplicationController

  before_action :authenticate_guest!

  def index
    @brochures = Brochure.all
  end

  private
  def brochure_params
    params.require(:brochure).permit(:title, :introduction, :image)
  end
end
