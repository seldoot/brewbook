class RecipesController < ApplicationController
  before_action :authenticate_brewer!, :set_brewer

  def index
  	    @recipes = @brewer.recipes
  end

  def show
  	@recipe = @brewer.recipes.find(params[:id])
  end

  def new
  	
    @recipe = @brewer.recipes.new
  end

  def create
  	
    @recipe = @brewer.recipes.create(recipe_params)
  	if @recipe.save
  		flash[:notice] = "Your recipe has been saved."
  		redirect_to brewer_recipe_path(@brewer, @recipe)
  	else
  		render :new
  	end
  end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def update
  	@recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
     flash[:notice] = "recipe updated"
     redirect_to @recipe
    else
      render :edit
    end
  end

  private

  def recipe_params
  	params[:recipe].permit(:recipe_name, :description, :brew_type, :brewer_id)
  end

  def set_brewer
    @brewer = current_brewer
  end
end
