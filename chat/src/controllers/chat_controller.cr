module Chat
  module Controller
    class ChatController < Shivneri::WebSocketController
      @[Event]
      def join_group(group_name : String)
        # add current client to a group
        clients.groups.add(group_name)

        # send message to a group except caller
        clients.groups.except_me("big_bang").emit("from_group_big_bang", "someone has joined")

        # send message to me
        clients.current.emit("message", "Welcome to the group")
      end

      @[Event]
      def to_big_bang(message : String)
        # send message to a group except caller
        clients.groups.except_me("big_bang").emit("from_group_big_bang", message)
      end

      def connected
        puts "Socket connected"
      end

      def disconnected
        puts "Socket disconnected"
      end
    end
  end
end
