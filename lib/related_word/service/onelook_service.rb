require 'json'
require 'net/http'
require 'uri'
require 'timeout'

require 'related_word/formatter'

class RelatedWord
  class Service
    class OnelookService
      LINK = "http://www.onelook.com/?ws1=1&scwo=1&sswo=0&loc=commonhint&w=*:"

      # Regex for filtering words
      # E.g: 1. <a href="/?loc=rescb&refclue=school&w=academy">academy</a>
      WORD_REGEX = /\d+\.\s<a[^>]+>([a-z\s]+)<\/a>/

      attr_reader :word

      def initialize(word)
        @word = word
      end

      def find
        Timeout::timeout(Configure.timeout) do
          resp    = Net::HTTP.get_response(word_uri)
          results = resp.body.scan(WORD_REGEX)
          Formatter::OnelookFormatter.new(results).format
        end
      end

      private

      def word_uri
        @word_uri ||= URI.parse("#{LINK}#{word}")
      end
    end
  end
end
