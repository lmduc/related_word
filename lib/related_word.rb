require 'related_word/semantic_service'

class RelatedWord
  attr_reader :service

  def initialize(service = :semantic)
    @service = service
  end

  def find(word)
    Service.get(service).find(word)
  end
end
