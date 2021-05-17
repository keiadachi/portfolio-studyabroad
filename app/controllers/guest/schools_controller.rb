class Guest::SchoolsController < ApplicationController

  before_action :authenticate_guest!

  def show
    @school = School.find(params[:id])
    @schools = School.all
  end

  def school_params
    params.require(:school).permit(:country_id, :city_id, :school_name, :course_name,
    :introduction, :stay, :nationality, :image, :course_introduction)
  end

end
