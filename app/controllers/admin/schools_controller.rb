class Admin::SchoolsController < ApplicationController
  
  def index
    @schools = School.all
  end

  def new
    @school = School.new
    @countries = Country.all
  end

  def show
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    #@countries = Country.all
      #binding.pry
    if @school.save
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
    :introduction, :stay, :nationality, :image)
  end

end
