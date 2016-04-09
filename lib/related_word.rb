require 'related_word/service'
require 'related_word/configure'

class RelatedWord
  attr_reader :service

  def initialize(service = nil)
    @service = service
  end

  def find(word)
    service_instance.new(word).find
  end

  private

  def service_instance
    @service_instance ||= Service.instance_class(service).new
  end
end
