class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    sort_attribute = params[:sort]

    if sort_attribute
      @recipes = @recipes.order(sort_attribute)
    end
  end

  def new
  end

  def create
    @recipe = Recipe.create(title: params[:title],
                            chef: params[:chef],
                            prep_time: params[:prep_time],
                            ingredients: params[:ingredients]
                            )
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to '/recipes'
  end
end
