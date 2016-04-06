require "json"
require "net/http"
require "uri"

class RelatedWord
  class Service
    class SemanticService
      LINK = "http://semantic-link.com/related.php?word="

      def find(word)
        resp = Net::HTTP.get_response(uri(word))
        JSON.parse(resp.body)
      end

      private

      def uri(word)
        URI.parse("#{LINK}#{word}")
      end
    end
  end
end
