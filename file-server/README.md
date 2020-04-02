# file-server

This is a demo of how to serve files in Shivneri framework

Below code in file src/file-server.cr contains code for exposing files 

```
Shivneri.folders = [
    {
      path: "/",
      folder:  File.join(Dir.current, "my_files"),
    },
    {
      path: "/static",
      folder:  File.join(Dir.current, "static"),
    },
    {
      path: "/files",
      folder:  File.join(Dir.current, "my_files"),
    },
]
```

From the above code, we are exposing three folders

* First folder exposed is "my_files" from root folder of this project with path "/". It means when route will be "/", it will serve files from "my_files" folder.
* Second folder exposed is "static" from root folder of this project with path "static". It means when route will be "/static", it will serve files from "static" folder.
* Third is same as first except alias is "files".

## How to run

* run command - shards install
* run command - crystal run src/file-server.cr

Since we have exposed three folders, you can test all folders by visiting urls - 

* http://localhost:4000/
* http://localhost:4000/static
* http://localhost:4000/files

## Contributing

1. Fork it (<https://github.com/your-github-user/file-server/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Ujjwal Gupta](https://github.com/your-github-user) - creator and maintainer
