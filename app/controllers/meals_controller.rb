require_relative '../views/meals_view.rb'
require_relative '../models/meal.rb'

class MealsController
  def initialize(meal_repository)
    @meal_repo = meal_repository
    @view = MealsView.new
  end

  def list
    meals = @meal_repo.all
    @view.display(meals)
  end

  def add
    name = @view.ask_user_for("name")
    price = @view.ask_user_for("price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repo.create(meal)
  end
end
