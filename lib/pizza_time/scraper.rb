require "pry"

require 'nokogiri'
require 'open-uri'


site = "https://www.allmenus.com/ca/carson/299259-bambinos-pizza/menu/"

page = Nokogiri::HTML(open(site))

pizza_menu = page.css("li.menu-items")[32..38] #only selecting the pizza menu
binding.pry


pizza_menu.each do |data|
    title = data.css("span.item-title").text
    description = data.css("p.description").text
    price = data.css("span.item-price").text.strip
end
