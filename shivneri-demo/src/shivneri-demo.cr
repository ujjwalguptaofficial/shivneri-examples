# TODO: Write documentation for `Shivneri::Demo`
require "shivneri"
require "./controllers/default_controller"
include Shivneri::Demo

module Shivneri::Demo
  include Controller
  VERSION = "0.1.0"
  Shivneri.routes = [{
    controller: DefaultController,
    path:       "/*",
  }]
  Shivneri.open do
    puts "Shivneri is created"
  end
end
