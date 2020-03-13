# TODO: Write documentation for `Request::Logger`
require "shivneri"
require "./walls/all"
require "./controllers/all"

module Request::Logger
  VERSION = "0.1.0"
  Shivneri.routes = [{
    controller: DefaultController,
    path:       "/*",
  }]
  Shivneri.walls = [RequestLoggerWall]
  Shivneri.open do
    puts "Fort is opened"
  end
end
