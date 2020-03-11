module Authentication
  module Shield
    class AuthenticationShield < Shivneri::Shield
      def protect
        if (!session.is_exist("email"))
          return redirect_result("/login")
        end
      end
    end
  end
end
