class MealsController < ApplicationController
  def index
    @meals = Meal.all.order("created_at DESC")
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :explanation, :category_id :price, :image).merge(shop_id: current_shop.id)
  end
end
