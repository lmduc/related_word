require 'related_word/formatter/base_formatter'

class RelatedWord
  module Formatter
    class SemanticFormatter < BaseFormatter
      def format
        json_resp.map do |el|
          { word: el['v'], score: el['mi_norm'] }
        end
      end
    end
  end
end
