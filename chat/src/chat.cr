require "shivneri"
require "./routes"

# TODO: Write documentation for `Chat`
module Chat
  VERSION = "0.1.0"

  Shivneri.routes = routes
  Shivneri.folders = [{
    path:   "/",
    folder: File.join(Dir.current, "static"),
  }]
  Shivneri.open do
    puts "app is started"
  end
end
