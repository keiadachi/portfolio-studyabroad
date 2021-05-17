class Guest::FaqsController < ApplicationController

  before_action :authenticate_guest!

  def index
    @faqs = Faq.all
  end
end
