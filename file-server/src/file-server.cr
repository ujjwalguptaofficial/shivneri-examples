require "shivneri"

module File::Server
  VERSION = "0.1.0"

  Shivneri.folders = [
    {
      path:   "/",
      folder: File.join(Dir.current, "my_files"),
    },
    {
      path:   "/static",
      folder: File.join(Dir.current, "static"),
    },
    {
      path:   "/files",
      folder: File.join(Dir.current, "my_files"),
    },
  ]

  Shivneri.open do
    puts "app is started"
  end
end
