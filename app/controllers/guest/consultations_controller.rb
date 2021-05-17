class Guest::ConsultationsController < ApplicationController
  
  before_action :authenticate_guest!
  before_action :authenticate_admin!
  
  def index
  end
end
