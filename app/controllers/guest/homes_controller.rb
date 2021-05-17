class Guest::HomesController < ApplicationController

  before_action :authenticate_guest!

  def top
  end

  def about
  end
end
