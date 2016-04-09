require 'related_word/service'
require 'related_word/configure'

class RelatedWord
  attr_reader :service

  def initialize(service = nil)
    @service = service
  end

  def find(word)
    service_class.new(word).find
  end

  private

  def service_class
    @service_class ||= Service.instance_class(service)
  end
end
