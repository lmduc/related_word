require 'json'
require 'net/http'
require 'uri'
require 'timeout'

class RelatedWord
  class Service
    class SemanticService
      LINK = "http://semantic-link.com/related.php?word="

      def find(word)
        Timeout::timeout(2000) do
          resp = Net::HTTP.get_response(uri(word))
          JSON.parse(resp.body)
        end
      end

      private

      def uri(word)
        URI.parse("#{LINK}#{word}")
      end
    end
  end
end
