class Guest::HomesController < ApplicationController

  before_action :authenticate_guest!, only: [:top]

  def top
  end

  def about
  end
end
