class Guest::BrochuresController < ApplicationController

  before_action :authenticate_guest!

  def index
    @brochures = Brochure.all
  # descは降順。大きい方から並べること
  # 例）5, 4, 3, 2, 1
  # 日付は新しいものほど大きい
  end

  private
  def brochure_params
    params.require(:brochure).permit(:title, :introduction, :image)
  end
end
