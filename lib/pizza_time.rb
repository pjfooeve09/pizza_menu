require 'nokogiri'
require 'open-uri'  
require 'pry'

require_relative "./pizza_time/version"
require_relative "./pizza_time/cli"
require_relative "./pizza_time/scraper"
require_relative "./pizza_time/pizza"


module PizzaTime
  class Error < StandardError; end
  # Your code goes here...
end
