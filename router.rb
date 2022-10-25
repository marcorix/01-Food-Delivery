# TODO: implement the router of your app.
class Router
  def run
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "8. Exit"
    print "> "
    choice = gets.chomp.to_i

    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 8 then stop!
    else puts "Try again..."
    end
  end
end
