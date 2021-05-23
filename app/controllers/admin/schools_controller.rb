class Admin::SchoolsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @schools = School.all.order("country_id")
    # 国名でソート
  end

  def new
    @school = School.new
    @countries = Country.all
  end

  def show
  end

  def edit
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to admin_schools_path
    else
      render :new
    end
  end

  def update
    @school = School.find(params[:id])
      if @school.update(school_params)
        redirect_to admin_schools_path(@schools)
      else
        render :edit
      end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
      redirect_to admin_schools_path
  end

  private
  def school_params
    params.require(:school).permit(:country_id, :city_id, :school_name, :course_name,
    :introduction, :stay, :nationality, :image, :course_introduction, :school_city_name)
  end

end
