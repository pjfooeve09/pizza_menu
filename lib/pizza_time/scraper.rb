require "pry"

class PizzaTime::Scraper

def self.scraper_pizza
    site = "https://www.allmenus.com/ca/carson/299259-bambinos-pizza/menu/"
    page = Nokogiri::HTML(open(site))
    pizza_menu = page.css("li.menu-items")[32..38]
        pizza_menu.each do |data|
        name = data.css("span.item-title").text
        description = data.css("p.description").text
        price = data.css("span.item-price").text.strip 
        PizzaTime::Pizza.new(name, description, price)
        end
    end
end