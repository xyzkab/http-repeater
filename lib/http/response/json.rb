module HTTP
  
  class Response

    class Body

      def json
        begin
          JSON.parse(to_s)
        rescue JSON::ParserError => e
          nil
        end
      end

      def json?
        json ? true : false
      end
      
    end

    def_delegator :body, :json
    def_delegator :body, :json?
  end
end