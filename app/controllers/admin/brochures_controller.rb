class Admin::BrochuresController < ApplicationController

  def index
    @brochures = Brochure.all
  end

  def new
    @brochure = Brochure.new
  end

  def show
  end

  def edit
    @brochure = Brochure.find(params[:id])
  end

  def create
    @brochure = Brochure.new(brochure_params)
      if @brochure.save
        redirect_to admin_brochures_path
      else
        render :new
      end
  end

  def update
    @brochure = Brochure.find(params[:id])
      if @brochure.update(brochure_params)
        redirect_to admin_brochures_path(@brochures)
      else
        redirect_to edit_admin_brochure_path(@brochure)
      end
  end

  private
  def brochure_params
    params.require(:brochure).permit(:title, :introduction, :image)
  end

end
