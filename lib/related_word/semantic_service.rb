require "json"
require "net/http"
require "uri"

class RelatedWord::SemanticService
  LINK = "http://semantic-link.com/related.php?word="

  def find(word)
    link = "#{LINK}#{word}"
    uri = URI.parse(link)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end
end
