class BrewersController < ApplicationController
  
  def index
  	@brewers=List.all
  end

  def show
  	@brewer = Brewer.find(params[:id])
  end

  private
  
  def brewer_params
  	params.require(:fname).permit(:lname, :brewing_interests)
  end
end
