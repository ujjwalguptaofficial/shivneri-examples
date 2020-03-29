module Chat
  module Controller
    class DefaultController < Shivneri::Controller
      @[DefaultWorker]
      def index
        text_result("Welcome to Shivneri")
      end
    end
  end
end
