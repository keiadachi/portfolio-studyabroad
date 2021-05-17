class Guest::CountriesController < ApplicationController

  before_action :authenticate_guest!

  def index
    @country = Country.all
  end

  def show
    #@countries = Country.all
    @country = Country.find(params[:id])
    @school = @country.schools
  end

  private
  def country_params
    params.require(:country).permit(:country_name, :capital, :country_population, :language,
    :currency, :introduction, :image)
  end

  def school_params
    params.require(:school).permit(:country_id, :city_id, :school_name, :course_name,
    :introduction, :stay, :nationality, :image)
  end


end
