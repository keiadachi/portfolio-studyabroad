class Guest::FaqsController < ApplicationController

  before_action :authenticate_guest!
  before_action :authenticate_admin!

  def index
    @faqs = Faq.all
  end
end
