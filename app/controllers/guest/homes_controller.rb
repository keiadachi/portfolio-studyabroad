class Guest::HomesController < ApplicationController

  before_action :authenticate_guest!
  before_action :authenticate_admin!

  def top
  end

  def about
  end
end
