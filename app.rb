# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb


require_relative './app/controllers/customers_controller.rb'
require_relative './app/repositories/customer_repository.rb'

require_relative './app/controllers/meals_controller.rb'
require_relative './app/repositories/meal_repository.rb'

require_relative 'router'

customers_csv_file = File.join(__dir__, './data/customers.csv')
customer_repository = CustomerRepository.new(customers_csv_file)
customers_controller = CustomersController.new(customer_repository)

meals_csv_file = File.join(__dir__, './data/meals.csv')
meal_repository = MealRepository.new(meals_csv_file)
meal_controller = MealsController.new(meal_repository)

router = Router.new(meal_controller, customers_controller)
router.run
