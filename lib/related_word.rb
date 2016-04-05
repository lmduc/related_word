require 'related_word/version'
require 'related_word/semantic_service'

class RelatedWord
  UnknownService = Class.new(StandardError)

  attr_reader :service

  def initialize(service = :semantic)
    @service = service
  end

  def find(word)
    if service == :semantic
      SemanticService.new.find(word)
    else
      raise UnknownService
    end
  end
end
