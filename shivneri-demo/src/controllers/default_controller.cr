module Shivneri::Demo
  module Controller
    class DefaultController < Shivneri::Controller
      @[DefaultWorker]
      def index
        text_result "Welcome to Shivneri"
      end

      @[Worker]
      def json
        data = {
          name:    "Ujjwal Gupta",
          address: "Bengaluru, India",
        }

        json_result data
      end

      @[Worker]
      @[Route("/body")]
      def get_body
        data = {
          name:    body["name"]?,
          address: body["address"]?,
        }

        return json_result(data)
      end
    end
  end
end
