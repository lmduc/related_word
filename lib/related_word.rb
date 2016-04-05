require 'related_word/semantic_service'

class RelatedWord
  def initialize(service = :semantic)
    @service = service
  end

  def find(word)
    UnknownService = Class.new(StandardError)

    if service == :semantic
      SemanticService.new.find(word)
    else
      raise UnknownService
    end
  end
end
