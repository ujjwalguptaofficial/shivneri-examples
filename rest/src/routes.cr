require "./controllers/all"

module Rest
  def self.routes
    return [
      {
        controller: DefaultController,
        path:       "/*",
      },
      {
        controller: UserController,
        path:       "/user",
      },
    ]
  end
end
