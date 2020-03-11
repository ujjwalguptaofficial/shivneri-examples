module Authentication
  module Controller
    class DefaultController < Shivneri::Controller
      @[DefaultWorker]
      def index
        text_result("Welcome to Shivneri")
      end

      @[Worker("GET")]
      @[Route("/login")]
      def get_login_form
        view_result("default/login.html")
      end

      @[Worker("POST")]
      @[Route("/login")]
      def do_login
        data = body.to_tuple(NamedTuple(email: String, password: String))

        if (data[:email] == "ujjwal@m.com" && data[:password] == "123")
          session["email"] = data[:email]
          text_result("Welcome ujjwal")
        else
          text_result("Invalid login data", 400)
        end
      end
    end
  end
end
