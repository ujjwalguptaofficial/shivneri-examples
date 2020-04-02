require "shivneri"

module File::Server
  VERSION = "0.1.0"

  Shivneri.folders = [
    {
      path_alias: "/",
      path:       File.join(Dir.current, "my_files"),
    },
    {
      path_alias: "static",
      path:       File.join(Dir.current, "static"),
    },
    {
      path_alias: "files",
      path:       File.join(Dir.current, "my_files"),
    },
  ]

  Shivneri.open do
    puts "app is started"
  end
end
