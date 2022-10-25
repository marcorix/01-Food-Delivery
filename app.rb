# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
require_relative './app/controllers/meals_controller.rb'
require_relative './app/repositories/meal_repository.rb'
require_relative 'router'

csv_file = File.join(__dir__, './data/meals.csv')
meal_repo = MealRepository.new(csv_file)
meal_controller = MealsController.new
router = Router.new
router.run
