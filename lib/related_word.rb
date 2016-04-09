require 'related_word/service'
require 'related_word/configure'

class RelatedWord
  def find(word)
    Service.instance_class.new(word).find
  end
end
