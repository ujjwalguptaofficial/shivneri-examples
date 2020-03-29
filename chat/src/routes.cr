require "./controllers/all"

module Chat
  def self.routes
    return [
      {
        controller: DefaultController,
        path:       "/*",
      },
      {
        controller: ChatController,
        path:       "/chat",
      },
    ]
  end
end
