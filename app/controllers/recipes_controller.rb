class RecipesController < ApplicationController
  def index
  	@recipes = List.all
  	  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

  def new
  	@recipe = Recipe.new(:recipe_name => params[:id])
  end

  def create
  	@recipe = Recipe.new(recipe_params)
  	if @recipe.save
  		flash[:notice] = "Your recipe has been saved."
  		redirect_to @recipe
  	else
  		render :new
  	end
  end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def update
  	@recipe = List.find(params[:id])
    if @recipe.update(recipe_params)
     flash[:notice] = "recipe updated"
     redirect_to @recipe
    else
      render :edit
    end
  end

  private

  def recipe_params
  	params.require(:recipe_name)
  	.permit(:description, :brew_type, :brewer_id)
end
