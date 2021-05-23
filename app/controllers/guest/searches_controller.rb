class Guest::SearchesController < ApplicationController

  def search
		@content	 = params[:content]
		@schools = School.search_for(@content)
  end
end
