class Guest::ConsultationsController < ApplicationController

  before_action :authenticate_guest!

  def index
  end
end
