require 'related_word/service'
require 'related_word/configure'

class RelatedWord
  attr_reader :service

  def find(word)
    Service.instance.find(word)
  end
end
