module Rest
  module GUARD
    class UserValidator < Shivneri::Guard
      @[Inject("as_body")]
      @[BodySameAs("UserController", "add_user")]
      def check(user)
        err_message = validate user
        if (err_message.size > 0)
          return text_result(err_message, 400)
        end
      end

      def validate(user)
        if (user[:name].size < 5)
          return "name should be minimum 5 characters"
        elsif (!["male", "female"].includes? user[:gender])
          return "gender should be either male or female"
        end
        return ""
      end
    end
  end
end
