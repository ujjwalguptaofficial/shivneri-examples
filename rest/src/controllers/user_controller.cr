require "../guards/all"
require "../services/all"
require "../models/all"

module Rest
  include GUARD
  include Service
  include Model

  module Controller
    @[Inject(instance(UserService))]
    class UserController < Shivneri::Controller
      @user_service : UserService

      def initialize(@user_service)
      end

      @[DefaultWorker]
      def get_all_users
        json_result(@user_service.users)
      end

      @[Worker("POST")]
      @[Route("/")]
      @[Inject("as_body")]
      @[ExpectBody(NamedTuple(id: Int32, name: String, gender: String))]
      @[Guards(UserValidator)]
      def add_user(user)
        user = @user_service.add_user(User.new(user))
        return json_result(user, 201)
      end

      @[Worker("GET")]
      @[Route("/{user_id}")]
      def get_user
        user_id = param["user_id"].to_i
        user = @user_service.get_user_by_id(user_id)
        if (user != nil)
          return json_result(user, 200)
        else
          return text_result("invalid user", 404)
        end
      end

      @[Worker("PUT")]
      @[Route("/")]
      @[Inject("as_body")]
      @[ExpectBody(NamedTuple(id: Int32, name: String, gender: String))]
      @[Guards(UserValidator)]
      def update_user(user)
        if (@user_service.update_user(User.new(user)))
          return text_result("user updated")
        else
          return text_result("invalid user")
        end
      end

      @[Worker("DELETE")]
      @[Route("/{user_id}")]
      def remove_user
        user_id = param["user_id"].to_i
        is_deleted = @user_service.delete_user(user_id)
        if (is_deleted)
          return text_result("user deleted", 200)
        else
          return text_result("invalid user", 404)
        end
      end
    end
  end
end
