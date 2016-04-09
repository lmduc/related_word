class RelatedWord
  module Formatter
    class BaseFormatter
      attr_reader :json_resp

      def initialize(json_resp)
        @json_resp = json_resp
      end
    end
  end
end
