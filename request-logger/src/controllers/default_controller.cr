module Request::Logger
  module Controller
    class DefaultController < Shivneri::Controller
      @[DefaultWorker]
      def index
        text_result("request count is #{self["request_count"]}")
      end
    end
  end
end
