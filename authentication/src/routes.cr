require "./controllers/all"

module Authentication
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
