module Request::Logger
  module Wall
    class RequestLoggerWall < Shivneri::Wall
      @@request_count = 0

      def incoming
        self["request_count"] = @@request_count += 1
        logger.info("request entered into fort at time #{Time.utc}")
        return nil
      end

      def outgoing
        logger.info("request exited from fort at time #{Time.utc}")
      end
    end
  end
end
