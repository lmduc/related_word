require 'related_word/service/semantic_service'
require 'related_word/service/onelook_service'

class RelatedWord
  class Service
    class << self
      def instance_class
        Object.const_get("RelatedWord::Service::#{class_name}")
      end

      private

      def class_name
        "#{service_name}Service"
      end

      def service_name
        Configure.service.to_s.split('_').map(&:capitalize).join
      end
    end
  end
end
