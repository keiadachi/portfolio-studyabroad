class Admin::SchoolsController < ApplicationController
  def index
  end

  def new
    @schools = School.new
    @countries = Country.all
  end

  def show
  end

  def edit
  end

  def create
    @schools = School.new
    if @schools.new(school_params)
      redirect_to admin_schools_path
    else
      render :new
    end
  end

  def update
  end
  
  private
  def school_params
    params.require(:school).permit(:country_id, :city_id, :school_name, :course_name, 
    :introduction, :stay, :nationality, :image_id)
  end
  
end
