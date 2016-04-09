require 'json'
require 'net/http'
require 'uri'
require 'timeout'

require 'related_word/formatter'

class RelatedWord
  class Service
    class SemanticService
      LINK = "http://semantic-link.com/related.php?word="

      attr_reader :word

      def initialize(word)
        @word = word
      end

      def find
        Timeout::timeout(Configure.timeout) do
          resp      = Net::HTTP.get_response(word_uri)
          json_resp = JSON.parse(resp.body)
          Formatter::SemanticFormatter.new(json_resp).format
        end
      end

      private

      def word_uri
        @word_uri ||= URI.parse("#{LINK}#{word}")
      end
    end
  end
end
