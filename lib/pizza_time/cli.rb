class PizzaTime::CLI
    def call
        puts "Welcome to Pizza Planet!"
        display_menu
    end

    def display_menu
        PizzaTime::Scraper.scraper_pizza
        puts 'Please type "menu" to display the pizza menu or type "exit" to exit'
        input = gets.chomp.downcase 
        if input == "menu"
            display_pizza_names
            display_description_and_price     
        elsif input == "exit" 
            exit  
        else 
            puts "Invalid entry"
            display_menu
        end
    end

    def display_pizza_names
        PizzaTime::Pizza.all.each.with_index(1) do |value, index|
            puts "#{index}. #{value.name}"  
        end 
    end

    def display_description_and_price
        puts "Please type the number of the pizza you are interested in"
        input = gets.chomp.to_i 
        menu = PizzaTime::Pizza.all
        if input > 0 && input <= PizzaTime::Pizza.all.size 
            index = input - 1
            puts "You have selected number #{input}: #{menu[index].name}"
            puts "Here is the description: #{menu[index].description}" 
            puts "Price: #{menu[index].price}"
            display_again
        else
            puts "Invalid entry"
            display_description_and_price
        end
    end

    def display_again
        puts 'Would you like to select another pizza? type "yes" or "no"'
        input = gets.chomp
        if input == "yes"
            display_pizza_names
            display_description_and_price
        elsif input == "no"
            exit
        else 
            puts "Invalid entry"
            display_again
        end
    end

    def exit
        puts "Thank you for visiting"
    end
end

