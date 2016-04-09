class RelatedWord
  module Formatter
    class SemanticFormatter < BaseFormatter
      def format
        resp.map do |el|
          { word: el['v'], score: el['mi_norm'] }
        end
      end
    end
  end
end
