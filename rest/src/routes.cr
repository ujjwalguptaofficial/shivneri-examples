require "./controllers/all"

module Rest
  include Controller

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
