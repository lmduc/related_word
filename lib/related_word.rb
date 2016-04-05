require "related_word/version"
require "nokogiri"
require "net/http"
require "uri"

module RelatedWord
  def self.find(word)
    link = "http://semantic-link.com/#/#{word}"
    uri = URI.parse(link)
    response = Net::HTTP.get_response(uri)
  end
end
