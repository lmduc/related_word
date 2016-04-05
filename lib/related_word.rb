require 'related_word/semantic_service'

class RelatedWord
  VERSION = '0.1.6'

  def initialize(service = :semantic)
    @service = service
  end

  def find(word)
    UnknownService = CLass.new(StandardError)

    if service == :semantic
      SemanticService.new.find(word)
    else
      raise UnknownService
    end
  end
end
