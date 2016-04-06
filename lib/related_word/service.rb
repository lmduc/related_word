class RelatedWord::Service
  UnknownService = Class.new(StandardError)

  def self.get(service)
    case service
    when :semantic
      Service::SemanticService.new
    else
      raise UnknownService
    end
  end
end
