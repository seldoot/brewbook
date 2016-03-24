class StaticPagesController < ApplicationController

  def home
  	if brewer_signed_in?
  		@brewer = current_brewer
  		redirect_to brewer_recipes_path(@brewer)
  	end
  end

  def about
  end
end
