require "shivneri"
require "./routes"

# TODO: Write documentation for `Authentication`
include Authentication

module Authentication
  VERSION = "0.1.0"

  Shivneri.routes = routes
  Shivneri.open do
    puts "app is started"
  end
end
