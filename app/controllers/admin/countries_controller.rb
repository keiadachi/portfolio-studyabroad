class Admin::CountriesController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def show
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(country_params)
      if @country.save
        redirect_to admin_countries_path
      else
        render :new
      end
  end

  def update
    @country = Country.find(params[:id])
      if @country.update(country_params)
        redirect_to admin_countries_path
      else
        redirect_to edit_admin_country_path(@country)
      end
  end

  private
  def country_params
    params.require(:country).permit(:country_name, :capital, :country_population, :language,
    :currency, :image, :introduction)
  end

end
