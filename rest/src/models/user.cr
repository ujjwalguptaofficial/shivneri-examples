module Rest
  module Model
    class User
      include JSON::Serializable
      property id, name, gender

      @id : Int32
      @name : String
      @gender : String

      def initialize(user)
        @id = user[:id]
        @name = user[:name]
        @gender = user[:gender]
      end

      def initialize(@id : Int32, @name : String, @gender : String)
      end
    end
  end
end
