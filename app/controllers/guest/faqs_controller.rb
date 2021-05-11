class Guest::FaqsController < ApplicationController
  def index
    @faqs = Faq.all
  end
end
