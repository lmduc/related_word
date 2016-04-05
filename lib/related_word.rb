require "related_word/version"
require "json"
require "net/http"
require "uri"

module RelatedWord
  def self.find(word)
    link = "http://semantic-link.com/related.php?word=#{word}"
    uri = URI.parse(link)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response)
  end
end
