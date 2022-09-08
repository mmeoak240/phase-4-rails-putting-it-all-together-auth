class RecipesController < ApplicationController


  def index
    render json: Recipe.all
  end

  def create
    recipe = @current_user.recipes.create!(recipe_params)
    render json: recipe, status: :created
  end

  private

  def recipe_params
    params.permit(:title, :instructions, :minutes_to_complete)
  end

#   def index
#     user = User.find_by(id: session[:user_id])
#     if user
#     recipes = Recipe.all
#     render json: recipes, status: :created
#     else
#     render json: { error: ["Not authorized"] }, status: :unauthorized
#   end
# end

# def create
#   user = User.find_by(id: session[:user_id])
# recipe = user.recipes.create!(recipe_params)
# render json: recipe, status: :created

# end

# private

# def recipe_params
#   params.permit(:title, :instructions, :minutes_to_complete)
# end


end
