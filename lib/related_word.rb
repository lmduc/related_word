require "related_word/version"
require "json"
require "net/http"
require "uri"

module RelatedWord
  LINK = "http://semantic-link.com/related.php?word="

  def self.find(word)
    link = "#{LINK}#{word}"
    uri = URI.parse(link)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  VERSION = '0.1.5'
  end
end
