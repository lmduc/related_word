class RelatedWord
  module Formatter
    class OnelookFormatter < BaseFormatter
      def format
        resp.map do |el|
          # NOTE: Onelook doesn't provide the score for each word
          { word: el[0], score: 0 }
        end
      end
    end
  end
end
