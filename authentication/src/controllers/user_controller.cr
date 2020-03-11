require "../shields/all"

module Authentication
  module Controller
    @[Shields(AuthenticationShield)]
    class UserController < Shivneri::Controller
      @[DefaultWorker]
      def index
        text_result("user is called")
      end
    end
  end
end
