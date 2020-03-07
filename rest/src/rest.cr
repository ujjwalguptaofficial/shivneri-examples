require "shivneri"
require "./routes"
require "./guards/all"
require "./services/all"
require "./models/all"

include Rest

# TODO: Write documentation for `Rest`
module Rest
  VERSION = "0.1.0"

  Shivneri.routes = routes
  Shivneri.open
end
