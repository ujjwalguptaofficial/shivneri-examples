module Chat
  module Controller
    class ChatController < Shivneri::WebSocketController
      @[On("join-group")]
      def join_group(group_name : String)
        # add current client to a group
        clients.groups.add(group_name)

        # send message to caller
        clients.current.emit("message", "Welcome to the group #{group_name}")
      end

      @[On("big-bang")]
      def to_big_bang(data : NamedTuple(from: String, message: String))
        # send message to a group except caller
        clients.groups.except_me("big-bang").emit("big-bang", data)
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
