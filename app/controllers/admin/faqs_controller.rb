class Admin::FaqsController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def show
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      redirect_to admin_faqs_path
    else
      render :new
    end
  end

  def update
    @faq = Faq.find(params[:id])
      if @faq.update(faq_params)
        redirect_to admin_faqs_path(@faqs)
      else
        redirect_to edit_admin_faq_path(@faq)
      end
  end


  private
  def faq_params
    params.require(:faq).permit(:question, :answer)
  end

end
